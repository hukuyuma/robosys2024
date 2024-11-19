#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuma Fukuya
# SPDX-License-Identifier: BSD-3-Clause

out=$(seq 15 | ./plus)

[ "${out}" = 120 ]
