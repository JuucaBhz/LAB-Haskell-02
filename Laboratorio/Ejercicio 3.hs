{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "b0e4f05e-1748-488a-ab21-06e778387f54",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 1."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "b21a2c66-5687-44fc-b682-d81f40ff618a",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- a. Suma de todos los elementos"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "c8cc69af-6fa0-4b6b-8a2c-a0bc32540bf6",
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
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Use sum</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">foldr (+) 0</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">sum</div></div>"
      ],
      "text/plain": [
       "Line 2: Use sum\n",
       "Found:\n",
       "foldr (+) 0\n",
       "Why not:\n",
       "sum"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sumaLista :: [Int] -> Int\n",
    "sumaLista = foldr (+) 0"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "80f55c14-b04c-472c-972d-8a7d5b466659",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "10"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sumaLista [1,2,3,4] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "79e135b5-5dbf-4202-b632-e58ca5ec79ce",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- b. Contar cuántos elementos son mayores que 10"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "3a24f863-7e7b-40a2-bb56-65f95ad39c8a",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "mayoresQue10 :: [Int] -> Int\n",
    "mayoresQue10 = length . filter (>10)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "6911acb8-ba76-40bc-8f10-bd59f399ee55",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "2"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mayoresQue10 [5,10,100,20]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "38428e4f-4a25-4112-a333-4e28473abd62",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- c. Calcular el producto de una lista de números"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "e0b4ac9c-df44-48cf-9abf-add39132a03b",
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
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Use product</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">foldr (*) 1</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">product</div></div>"
      ],
      "text/plain": [
       "Line 2: Use product\n",
       "Found:\n",
       "foldr (*) 1\n",
       "Why not:\n",
       "product"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "productoLista :: [Int] -> Int\n",
    "productoLista = foldr (*) 1\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "1b0e7692-41e7-4fad-a733-140d4c4b760d",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "24"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "productoLista [2,3,4]  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "8f9d0323-0fbb-42ac-98a1-6ae6c390b1e5",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- d. Convierte una lista de grados Celsius a Fahrenheit"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "6519a8b7-7203-4e2c-ad80-816b9f19d30f",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "celsiusAFahrenheit :: [Double] -> [Double]\n",
    "celsiusAFahrenheit = map (\\c -> c * 1.8 + 32)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "7eea2285-65a9-4b24-9d36-c360f3ea9bc4",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[32.0,212.0]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "celsiusAFahrenheit [0,100] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "eb71ab57-69f5-498c-b5ed-c65584264d69",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- e. Suma 5 a cada número impar de una lista y deja igual los pares."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "2b044d23-ddef-4ad5-8030-c9711e36c829",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "ajustarImpares :: [Int] -> [Int]\n",
    "ajustarImpares = map (\\x -> if odd x then x + 5 else x)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "a8dc9d29-0b62-461e-800e-82122d38685c",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[6,2,8,4,10]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "ajustarImpares [1,2,3,4,5] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "e3647b72-9340-4df8-9056-68ac9171e3a7",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 2."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "20a1b191-389c-4679-8c94-31f8347ea0e4",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- a. Devuelve solo los nombres con más de 5 letras."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "fc71cd70-deb7-4e90-bd30-9bb9d98512af",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "nombresLargos :: [String] -> [String]\n",
    "nombresLargos = filter (\\n -> length n > 5)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "b93ac3a7-a058-4214-ba1d-21194da0a5ae",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[\"juliancho\"]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nombresLargos [\"ana\",\"juliancho\",\"pepe\"] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "4b1e2f0c-f449-46ff-a1fa-0bff1fc30f64",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- b. Filtra los números negativos de una lista."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "29a32890-2ac0-46a4-9c48-bbb351dd6b67",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "soloNegativos :: [Int] -> [Int]\n",
    "soloNegativos = filter (<0)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "53d44d82-f7cf-4a6e-b8a7-a83fcb2e6021",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[-3,-10]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "soloNegativos [-3,0,5,-10]   "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "64f771d7-a563-41e4-86c8-1dccb63506a2",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- c. De una lista de edades, obtiene las que estén entre 18 y 25 años."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "9f4def6e-1d05-40c0-a3aa-d4c4104baa3a",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "edadesUniversitarios :: [Int] -> [Int]\n",
    "edadesUniversitarios = filter (\\x -> x >= 18 && x <= 25)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "45170342-cd91-4681-9078-a7c38aee01c6",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[19,22]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "edadesUniversitarios [15,19,22,30] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "dd605543-0f55-42e4-b301-947708f40bd4",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 3."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "42d158ed-e77f-4f12-8ee6-03663fc766e8",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- a.  Dada una lista de precios, sumar IVA (19%) solo a los valores mayores o iguales a 1000."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "0b132c55-bef3-41fd-b936-2c5a7ec49cef",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "agregarIVA :: [Double] -> [Double]\n",
    "agregarIVA = map (*1.19) . filter (>=1000)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "7426f9f1-0e1a-4b2b-974a-44fb3ab138b0",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[1785.0,2380.0]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "agregarIVA [500,1500,2000] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "e70d6632-1772-4559-88cc-27cfc9b1e4f8",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- b. De una lista de palabras, obtener solo las que comienzan con vocal y devolver su longitud."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "e5aafd1e-69fb-4140-a0dd-abd8c560f259",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "longitudesVocales :: [String] -> [Int]\n",
    "longitudesVocales = map length . filter (\\w -> not (null w) && head w `elem` \"aeiouAEIOU\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "78399659-3ae7-4c87-a15e-7c7aefdcbac6",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[3,3,4]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "longitudesVocales [\"ola\",\"Casa\",\"uva\",\"auto\"]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "900ee1ad-d47e-486d-819c-834590385531",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- c. Dada una lista de números, devuelve los cuadrados de los pares."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "59d79147-5326-417e-9b7c-6a449c28cd1a",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "cuadradosPares :: [Int] -> [Int]\n",
    "cuadradosPares = map (^2) . filter even"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "4ea7f279-9bd7-467c-8076-7feac0b359d0",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[4,36]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cuadradosPares [1,2,3,6]    "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "278e5e24-7c84-40f5-be88-038d372e9f08",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 4."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "424753b9-a37e-4845-97cc-218b4268084f",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- a. Verifica si algún número en la lista es negativo."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "bc787bbf-da6e-4d7f-9e5d-2135f2439a73",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "hayNegativo :: [Int] -> Bool\n",
    "hayNegativo = any (<0)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "2a442e55-2cf1-4d7c-b591-a8195bb58ede",
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
    "hayNegativo [3,-2,5]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "bdba103e-51c3-4b96-beda-a8173d72d81d",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- b. Verifica si todos los números son pares."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "5d843d56-3e72-41be-bffc-3f0cafacc478",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "todosPares :: [Int] -> Bool\n",
    "todosPares = all even"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "10c6ec85-06db-40c4-9b65-938dd22f2032",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "False"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "todosPares [2,4,6,7]  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "05bfb218-d1be-481d-ad0c-618fc7def66a",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- c. Comprueba si todos los nombres empiezan con mayúscula."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "16fdc4c7-736a-4283-aca1-64f96858a43e",
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
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Use isAsciiUpper</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">head n >= 'A' && head n <= 'Z'</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">isAsciiUpper (head n)</div></div>"
      ],
      "text/plain": [
       "Line 2: Use isAsciiUpper\n",
       "Found:\n",
       "head n >= 'A' && head n <= 'Z'\n",
       "Why not:\n",
       "isAsciiUpper (head n)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nombresCorrectos :: [String] -> Bool\n",
    "nombresCorrectos = all (\\n -> not (null n) && head n >= 'A' && head n <= 'Z')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "a77896b4-ec83-4add-91d9-206b11dfb69b",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "False"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nombresCorrectos [\"Juliancho\",\"maria\"]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "34444ebb-7104-4c3d-9abd-9e9ba0ddb0ac",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 5."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "4578e1ed-9bbf-4d9a-ad15-e0e4a66ceb29",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- a. De una lista ordenada, toma los elementos menores que 100."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "3828fcf4-7fc5-4bf6-a55f-c421292d9ac6",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "menoresQue100 :: [Int] -> [Int]\n",
    "menoresQue100 = takeWhile (<100)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "818ae3bc-c9e9-479f-a2c3-af70608fe19e",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[10,20]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "menoresQue100 [10,20,150,30] "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "2201fda4-9738-4ba4-bd57-4d6ba33cef0c",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- b. Quita los ceros iniciales de una lista."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "2da64844-c840-430c-ad05-eab01497d468",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "sinCerosIniciales :: [Int] -> [Int]\n",
    "sinCerosIniciales = dropWhile (==0)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "01e54a8e-a67a-4000-8b14-a8814eaecc02",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[5,6,0]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sinCerosIniciales [0,0,5,6,0]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "6b66a28e-b0b7-4e85-a1b8-69b05ccecefb",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- 4."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "87e98b39-8688-420a-9deb-d03537347f7f",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- a. Aplica una función a una lista de lecturas"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "19b91509-9a43-4567-bb08-5cdb714a71ba",
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
   "id": "5e766315-a565-4710-ade9-34af40123006",
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
   "id": "2071e628-5376-43f9-99a8-c05d8e923903",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "-- b. Crea un filtro personalizado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "5bff96a0-7af8-4c9a-84aa-61afb82368aa",
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
   "id": "c24d6724-5ca8-452d-9b9a-6085bf8accee",
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
   "id": "f2de2d3d-9c2f-48dd-bdc9-2d346b67d029",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- c. Verificador de rango"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "d5b2288a-9a46-48f3-acb6-cc53c64b0d10",
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
   "id": "44ebc131-fb21-42d7-80ff-753cca23d091",
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
   "id": "d4665c0d-10d5-418e-9242-1ea5eed7a1d3",
   "metadata": {},
   "outputs": [],
   "source": [
    "-- d. Potenciador"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "29d24d47-1d8f-400d-9cdc-b7129a4ab123",
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
   "id": "afc0d28e-cf4a-46f7-8865-0be60f48be8b",
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
