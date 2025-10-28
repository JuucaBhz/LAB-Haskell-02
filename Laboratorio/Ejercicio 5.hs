{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "eccfb8f4-a433-4913-9671-f7b0f3a4ebb3",
   "metadata": {},
   "source": [
    "type Estado = (Int, Int)\n",
    "type Nodo = Estado\n",
    "type Costo = Int\n",
    "type Grafo = [(Nodo, [(Nodo, Costo)])]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "48337659-6191-49aa-8a0d-56bd15e36387",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "type Estado = (Int, Int)\n",
    "type Nodo = Estado\n",
    "type Costo = Int\n",
    "\n",
    "capA, capB :: Int\n",
    "capA = 5\n",
    "capB = 3\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "61e1ee6d-ba1d-41d8-b3dd-76acd902efd3",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- Verter de A hacia B\n",
    "transferirAB :: Estado -> Estado\n",
    "transferirAB (a, b) =\n",
    "  let espacioB = capB - b\n",
    "      mover = min a espacioB\n",
    "  in (a - mover, b + mover)\n",
    "  \n",
    "-- Verter de B hacia A\n",
    "transferirBA :: Estado -> Estado\n",
    "transferirBA (a, b) =\n",
    "  let espacioA = capA - a\n",
    "      mover = min b espacioA\n",
    "  in (a + mover, b - mover)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "83d471e6-91f2-4840-aadd-6d00e7062e0c",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- Genera todos los estados alcanzables desde uno dado\n",
    "vecinos :: Estado -> [(Estado, Costo)]\n",
    "vecinos (a,b) =\n",
    "  [ ((capA, b), 1)            -- Llenar jarra A\n",
    "  , ((a, capB), 1)            -- Llenar jarra B\n",
    "  , ((0, b), 1)               -- Vaciar jarra A\n",
    "  , ((a, 0), 1)               -- Vaciar jarra B\n",
    "  , (transferirAB (a,b), 1)  -- Verter A→B\n",
    "  , (transferirBA (a,b), 1)  -- Verter B→A\n",
    "  ]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "80d92e94-55d1-40a6-a8f9-36448d88e567",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "heuristica :: Estado -> Costo\n",
    "heuristica (a,b) = abs (4 - a) `min` abs (4 - b)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "c871b469-3c45-45a2-a281-46907dd32ff6",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "import Data.List (sortOn)\n",
    "\n",
    "aStar :: (Nodo -> [(Nodo, Costo)]) -> (Nodo -> Costo) -> Nodo -> (Nodo -> Bool) -> [(Nodo, Costo)]\n",
    "aStar sucesores heuristica inicio esMeta = buscar [(inicio, 0)] []\n",
    "  where\n",
    "    buscar [] _ = []\n",
    "    buscar ((nodo, costo):cola) visitados\n",
    "      | esMeta nodo = [(nodo, costo)]\n",
    "      | nodo `elem` visitados = buscar cola visitados\n",
    "      | otherwise =\n",
    "          let nuevos = [ (v, costo + c) | (v, c) <- sucesores nodo, v `notElem` visitados ]\n",
    "              ordenados = sortOn (\\(v, c) -> c + heuristica v) (cola ++ nuevos)\n",
    "          in (nodo, costo) : buscar ordenados (nodo : visitados)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "32c44bd7-659b-4065-9502-94a474872a47",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "inicio :: Estado\n",
    "inicio = (0,0)\n",
    "\n",
    "\n",
    "esMeta :: Estado -> Bool\n",
    "esMeta (a,b) = a == 4 || b == 4"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "08587155-9565-4c3c-b283-c3c92c91023a",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[((0,0),0),((5,0),1),((0,3),1),((5,3),2),((2,3),2),((3,0),2),((3,3),3),((2,0),3),((5,1),4),((0,2),4),((5,2),5),((4,3),6)]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "solucion :: [(Estado, Costo)]\n",
    "solucion = aStar vecinos heuristica inicio esMeta\n",
    "\n",
    "solucion"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Haskell",
   "language": "haskell",
   "name": "haskell"
  },
  "language_info": {
   "codemirror_mode": "ihaskell",
   "file_extension": ".hs",
   "mimetype": "text/x-haskell",
   "name": "haskell",
   "pygments_lexer": "Haskell",
   "version": "9.6.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
