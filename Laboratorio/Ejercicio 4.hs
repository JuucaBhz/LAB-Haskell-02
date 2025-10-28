{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "83d2a21f-a66f-48f6-a673-cd71e2e6eb3a",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 1."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "4d134ecb-e47a-4cbe-8871-af99d8aa4fb0",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- Define una funcion que recibe una función que transforma una lectura"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "6a4911cd-1885-46a5-bcc1-524257621257",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "procesarLecturas :: (Double -> Double) -> [Double] -> [Double]\n",
    "procesarLecturas = map"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "c1f119b5-624e-4352-a119-32a7ae7dc26b",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[2.0,4.0,6.0]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "procesarLecturas (*2) [1.0,2.0,3.0] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "689aac6d-07d0-4f38-ba72-7a177334538f",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- Define una función que retorne un filtro personalizado:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "e4058849-911d-421f-ac07-7efcca264429",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "crearFiltro :: (a -> Bool) -> ([a] -> [a])\n",
    "crearFiltro = filter"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "b9d61d7e-bdf7-431e-a5b4-659523db0a32",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[2,4,6,8,10]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "soloPares = crearFiltro even\n",
    "soloPares [1..10]         "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "3e723fc1-bc90-478c-8b43-bafa81c17f71",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- Crea una función que genera “verificadores” de rangos."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "b7a5c516-4bfd-4fa5-a4f6-7d50951bd9f0",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>/* Styles used for the Hoogle display in the pager */\n",
       ".hoogle-doc {\n",
       "display: block;\n",
       "padding-bottom: 1.3em;\n",
       "padding-left: 0.4em;\n",
       "}\n",
       ".hoogle-code {\n",
       "display: block;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "}\n",
       ".hoogle-text {\n",
       "display: block;\n",
       "}\n",
       ".hoogle-name {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-head {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-sub {\n",
       "display: block;\n",
       "margin-left: 0.4em;\n",
       "}\n",
       ".hoogle-package {\n",
       "font-weight: bold;\n",
       "font-style: italic;\n",
       "}\n",
       ".hoogle-module {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-class {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       ".get-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "white-space: pre-wrap;\n",
       "}\n",
       ".show-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "margin-left: 1em;\n",
       "}\n",
       ".mono {\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "}\n",
       ".err-msg {\n",
       "color: red;\n",
       "font-style: italic;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "display: block;\n",
       "}\n",
       "#unshowable {\n",
       "color: red;\n",
       "font-weight: bold;\n",
       "}\n",
       ".err-msg.in.collapse {\n",
       "padding-top: 0.7em;\n",
       "}\n",
       "\n",
       ".highlight-code {\n",
       "white-space: pre;\n",
       "font-family: monospace;\n",
       "}\n",
       "\n",
       ".suggestion-warning { \n",
       "font-weight: bold;\n",
       "color: rgb(200, 130, 0);\n",
       "}\n",
       ".suggestion-error { \n",
       "font-weight: bold;\n",
       "color: red;\n",
       "}\n",
       ".suggestion-name {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Redundant lambda</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">enRango min max = \\ x -> x >= min && x <= max</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">enRango min max x = x >= min && x <= max</div></div>"
      ],
      "text/plain": [
       "Line 2: Redundant lambda\n",
       "Found:\n",
       "enRango min max = \\ x -> x >= min && x <= max\n",
       "Why not:\n",
       "enRango min max x = x >= min && x <= max"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "enRango :: Int -> Int -> (Int -> Bool)\n",
    "enRango min max = \\x -> x >= min && x <= max"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "id": "da2c60b2-ddc6-4799-b7a2-21b06e3e6f6e",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "entre5y10 = enRango 5 10\n",
    "entre5y10 7 "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "57dd9255-58a9-4a5f-8817-8033d1490178",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- Genera una función que eleva a una potencia dada."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "81198f39-9c2d-4d50-93df-5c2b8f498ba1",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "potenciador :: Int -> (Int -> Int)\n",
    "potenciador n = (^n)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 53,
   "id": "ae330ec6-d63d-471a-849b-8e820dc4cc25",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "8"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "alCubo = potenciador 3\n",
    "alCubo 2   "
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
