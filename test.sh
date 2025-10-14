#!/bin/bash

if [ -f "index.html" ]; then
    echo "index.html найден ✅"
else
    echo "index.html не найден ❌"
    exit 1
fi

if grep -q "<html" index.html; then
    echo "index.html содержит тег <html> ✅"
else
    echo "index.html не содержит тег <html> ❌"
    exit 1
fi

echo "Тест пройден успешно ✅"