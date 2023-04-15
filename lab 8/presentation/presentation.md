---
## Front matter
lang: ru-RU
title: Лабораторная работа № 8
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

## Цели работы

Изучить модель конкуренции для двух фирм и в двух случаях. Построить графики с помощью представленных уравнений, описивающих случаи.

## Задания

1.	Изучить модель конкуренции двух фирм
2.	Изучить случаи представленные в варианте
3.	Построить графики изменения оборотных средств в двух случаях


## Ход работы

Код на Julia - функции ОДУ и визуализации(@fig:001)

![Код Julia - I часть](./image/01.png){#fig:001 height=60%}

## Ход работы

Код на Julia - решение ОДУ и вызов функции визуализации(@fig:002)

![Код Julia - II часть](./image/02.png){#fig:002 height=75%}

## Ход работы

Результаты:(@fig:003-@fig:006)

![Математическая модель - I случай](./image/Figure_1.png){#fig:003 height=60%}

## Ход работы

![Математическая модель - I случай(парам.)](./image/Figure_1(parametric).png){#fig:004 height=60%}

## Ход работы

![Математическая модель - II случай](./image/Figure_2.png){#fig:005 height=60%}

## Ход работы

![Математическая модель - II случай(парам.)](./image/Figure_2(parametric).png){#fig:006 height=60%}

## Ход работы

Код на OpenModelica(@fig:007-@fig:008)

![OpenModelica - I случай](./image/03.png){#fig:007 height=75%}

## Ход работы

![OpenModelica - II случай](./image/04.png){#fig:008 height=75%}

## Ход работы

Результаты:(@fig:009-@fig:012)

![Математическая модель - I случай](./image/model_1.png){#fig:009 height=60%}

## Ход работы

![Математическая модель - I случай(парам.)](./image/model_1(parametric).png){#fig:010 height=60%}

## Ход работы

![Математическая модель - II случай](./image/model_2.png){#fig:011 height=60%}

## Ход работы

![Математическая модель - II случай(парам.)](./image/model_2(parametric).png){#fig:012 height=60%}


## Результаты

В ходе выполнения лабораторной работы была изучена модель конкуренции двух фирм и построены графики.