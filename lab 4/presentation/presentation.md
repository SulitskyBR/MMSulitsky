---
## Front matter
lang: ru-RU
title: Лабораторная работа № 3
author:
  - Сулицкий Богдан Романович
group:
  - НФИбд-02-20, 1032201388
date: 2023, Москва

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

## Цели и задачи
Целью данной лабораторной работы является построение математических моделей гармонический колебаний.

## Задачи
Построить фазовый портрет гармонического осциллятора и решенить уравнения гармонического осциллятора для следующих случаев:

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы

2. Колебания гармонического осциллятора c затуханием и без действий внешней
силы

3. Колебания гармонического осциллятора c затуханием и под действием внешней силы

## Ход работы

Код на Julia - функции ОДУ и визуализации(@fig:001)

![Код Julia - I часть](./image/01.png){#fig:001 height=60%}

## Ход работы

Код на Julia - решение ОДУ и вызов функции визуализации(@fig:002)

![Код Julia - II часть](./image/02.png){#fig:002 height=75%}

## Ход работы

Результаты:(@fig:003@fig:008)

![Математическая модель - I случай](./image/Figure_1.png){#fig:003 height=75%}

## Ход работы

![Математическая модель - I случай(парам.)](./image/Figure_1(parametric).png){#fig:004 height=75%}

## Ход работы

![Математическая модель - II случай](./image/Figure_2.png){#fig:005 height=75%}

## Ход работы

![Математическая модель - II случай(парам.)](./image/Figure_2(parametric).png){#fig:006 height=75%}

## Ход работы

![Математическая модель - III случай](./image/Figure_3.png){#fig:007 height=75%}

## Ход работы

![Математическая модель - III случай(парам.)](./image/Figure_3(parametric).png){#fig:008 height=75%}

## Ход работы

Код OpenModelica.(@fig:009-@fig:011)

![OpenModelica - I случай](./image/03.png){#fig:009 height=75%}

## Ход работы

![OpenModelica - II случай](./image/04.png){#fig:010 height=75%}

## Ход работы

![OpenModelica - II случай](./image/05.png){#fig:011 height=75%}

## Ход работы

Результаты:(@fig:012-@fig:017)

![Математическая модель - I случай](./image/model_1.png){#fig:012 height=75%}

## Ход работы

![Математическая модель - I случай(парам.)](./image/model_1(parametric).png){#fig:013 height=75%}

## Ход работы

![Математическая модель - II случай](./image/model_2.png){#fig:014 height=75%}

## Ход работы

![Математическая модель - II случай(парам.)](./image/model_2(parametric).png){#fig:015 height=75%}

## Ход работы

![Математическая модель - III случай](./image/model_3.png){#fig:016 height=75%}

## Ход работы

![Математическая модель - III случай(парам.)](./image/model_3(parametric).png){#fig:017 height=75%}


## Результаты

В результате проделанной работы были построены математические модели 3 случаев движения гармонического осциллятора.
