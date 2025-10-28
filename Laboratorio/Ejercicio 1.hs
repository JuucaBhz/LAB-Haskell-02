{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "ed1656ad-2598-4901-8434-990bd8fd1321",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "--1."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "e5f1a0c2-7f34-4ef4-ab29-f690ab48c51b",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- Retorna la longitud de una lista"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "7e4415e7-54eb-4a29-8bc8-9151dd04cc2e",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "miLength :: [a] -> Int\n",
    "miLength [] = 0\n",
    "miLength (_:xs) = 1 + miLength xs"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "912e3213-ff73-46a2-866f-cd34613a2bf3",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "miLength [1,2,3,4]  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "8c0835a5-bcc1-41dd-b536-1ddd403cac3f",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- Retorna el último elemento de una lista"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "9964ea89-ad82-4445-859f-a48d36d1c6eb",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "miLast :: [a] -> a\n",
    "miLast [x] = x\n",
    "miLast (_:xs) = miLast xs"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "35c7464b-b89c-49e5-b3ee-f030f9753453",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "40"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "miLast [10,20,30,40]  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "a4a62aad-09e2-4995-8119-d3bf53edd7a4",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- Duplica cada elemento de una lista de números"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "b290821c-8163-4dad-a6c0-034424d54310",
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
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Use map</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">duplicar [] = []\n",
       "duplicar (x : xs) = (2 * x) : duplicar xs</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">duplicar xs = map (2 *) xs</div></div>"
      ],
      "text/plain": [
       "Line 2: Use map\n",
       "Found:\n",
       "duplicar [] = []\n",
       "duplicar (x : xs) = (2 * x) : duplicar xs\n",
       "Why not:\n",
       "duplicar xs = map (2 *) xs"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "duplicar :: [Int] -> [Int]\n",
    "duplicar [] = []\n",
    "duplicar (x:xs) = (2*x) : duplicar xs"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "d8497df2-bfe1-4478-be1a-6f6ad9b2280b",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[2,4,6]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "duplicar [1,2,3] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "b15732b7-7e18-4aeb-aa33-fde1d86aecfc",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- Eliminar los elementos pares de una lista"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "1d1e84f8-1662-4205-a2cc-6c140efe529f",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "eliminarPares :: [Int] -> [Int]\n",
    "eliminarPares [] = []\n",
    "eliminarPares (x:xs)\n",
    "  | even x    = eliminarPares xs\n",
    "  | otherwise = x : eliminarPares xs"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "f9a13b8f-345d-4b88-9a14-7c63728569c1",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[1,3,5,7,9]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "eliminarPares [1..10] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "fee63b17-1d45-4cd6-89bb-1bee691b63ef",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "--2."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "339e82d1-088b-42b3-990c-6b4414dea43d",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "miLength :: [a] -> Int\n",
    "miLength = foldr (\\_ acc -> acc + 1) 0"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "801bbed0-541b-4f20-8cea-7a61eec103c0",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "3"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "miLength [\"a\",\"b\",\"c\"] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "34eb3855-f6f5-499b-a974-6f1653ee87b7",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "miLast :: [a] -> a\n",
    "miLast = foldl1 (\\_ y -> y)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "ec9547a3-70fc-4360-b267-f3ec19c02590",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "15"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "miLast [5,10,15] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "06cc8f54-20a6-4fe9-bee2-693a2e104522",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "duplicar :: [Int] -> [Int]\n",
    "duplicar = map (*2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "974712b3-680d-4d02-81dd-fb679b5962f2",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[8,10,12]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "duplicar [4,5,6]   "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "e513d510-35e9-427f-9ae9-84fad8f1379d",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "eliminarPares :: [Int] -> [Int]\n",
    "eliminarPares = filter odd"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "1efc2795-726a-4843-8c77-9839773d862b",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[5,7]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "eliminarPares [2,4,5,7]"
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
