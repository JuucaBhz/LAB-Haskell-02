{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "614fa12a-6dff-4532-8819-950c18b8fb70",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 1."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "fb299062-86ae-4f33-8153-673341d62e62",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- a. Obtener los cuadrados de los primeros 10 números."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "d765f847-b0cb-4710-a423-2763b686df74",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "cuadrados = [x^2 | x <- [1..10]]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "3b1e3cfa-121f-4e05-ae05-e51e082fee6e",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[1,4,9,16,25,36,49,64,81,100]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cuadrados   "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "fa15baea-0451-4f8b-baa4-3659c08d5c03",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- b. Filtrar los divisibles por 3 entre 1 y 30."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "e0ff89e9-82cd-4c03-b5ad-0504d9d532f8",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "divisiblesPor3 = [x | x <- [1..30], x `mod` 3 == 0]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "0a20d9f6-fe0c-4870-81ed-fac1fe64551e",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[3,6,9,12,15,18,21,24,27,30]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "divisiblesPor3 "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "6847d2b7-b419-4aa1-96d6-1a773b5ba451",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- c. Generar una lista de pares (x, y) donde x < y y ambos estén en [1..5]."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "23624b5e-bf01-447a-88a6-bb8bbb9aa7bd",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "paresXY = [(x, y) | x <- [1..5], y <- [1..5], x < y]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "63e16f0b-d179-4d51-80cb-4d85da711158",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[(1,2),(1,3),(1,4),(1,5),(2,3),(2,4),(2,5),(3,4),(3,5),(4,5)]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "paresXY  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "3508f73b-5915-4c00-be23-eba2ad266f17",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 2. Define una función que devuelva los divisores de un número (usando lista por comprensión):"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "c45eb0e9-5207-4fd7-9309-d011a6eed4e3",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "divisores :: Int -> [Int]\n",
    "divisores n = [x | x <- [1..n], n `mod` x == 0]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "8df3d5e3-ca8d-4a00-a895-2e8ae5559133",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[1,2,3,4,6,12]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "divisores 12 "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "1ff70aff-e3f8-49e6-be4c-32b6fa49c718",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- e. Divisores propios"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "b3f4d771-8c9e-42ca-ad88-eec1c9d8c58e",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "divisoresPropios :: Int -> [Int]\n",
    "divisoresPropios n = [x | x <- [1..n-1], n `mod` x == 0]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "9aee1312-5870-47db-8f00-d14df351e55b",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[1,2,3]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "divisoresPropios 6"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "fc233ec6-c5ae-4401-b860-a0c49c243402",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 3. Define la función divisoresPropios, crea una función que determine si un número es perfecto (suma de sus divisores propios = número):"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "31f2a52c-6370-4b02-93fe-c7ed07d1c4bd",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "esPerfecto :: Int -> Bool\n",
    "esPerfecto n = sum (divisoresPropios n) == n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "0df4b894-6ed6-4469-9463-a4c7b9132d68",
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
    "esPerfecto 6   "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "47e29369-70dc-426b-81db-17232d81b028",
   "metadata": {},
   "outputs": [],
   "source": []
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
