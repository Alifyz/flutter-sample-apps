//
// Copyright (c) 2019 Razeware LLC
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import 'package:flutter/material.dart';

class FilmsModel {
  static const _films = [
    Film(1, 'The Phantom Menace', Colors.blue, Colors.white),
    Film(2, 'Attack of the Clones', Colors.purple, Colors.white),
    Film(3, 'Revenge of the Sith', Colors.red, Colors.white),
    Film(4, 'A New Hope', Colors.yellow, Colors.black),
    Film(5, 'The Empire Strikes Back', Colors.grey, Colors.white),
    Film(6, 'Return of the Jedi', Colors.blue, Colors.white),
    Film(7, 'The Force Awakens', Colors.yellow, Colors.black),
    Film(8, 'The Last Jedi', Colors.red, Colors.white),
    Film(9, 'The Rise of Skywalker', Colors.blue, Colors.white),
  ];

  int get length => _films.length;

  Film getById(int id) => _films[id - 1];

  Film getByPosition(int position) => _films[position];
}

class Film {
  final int episodeId;
  final String name;
  final Color backgroundColor;
  final Color iconColor;

  const Film(this.episodeId, this.name, this.backgroundColor, this.iconColor);
}
