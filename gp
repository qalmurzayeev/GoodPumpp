<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoodPump</title>
<script src="https://cdn.tailwindcss.com/3.4.16">
</script>
<script>
tailwind.config = {
  theme: {
    extend: {
      colors: { primary: "#3176FF", secondary: "#f0f5ff" },
      borderRadius: {
        none: "0px",
        sm: "4px",
        DEFAULT: "8px",
        md: "12px",
        lg: "16px",
        xl: "20px",
        "2xl": "24px",
        "3xl": "32px",
        full: "9999px",
        button: "8px",
      },
    },
  },
};
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.6.0/remixicon.min.css">
<style>
:where([class^="ri-"])::before { content: "\f3c2"; }
body {
font-family: 'Inter', sans-serif;
scroll-behavior: smooth;
}
.product-card {
transition: all 0.3s ease;
}
.product-card:hover {
transform: translateY(-5px) scale(1.01);
box-shadow: 0 10px 20px rgba(49, 118, 255, 0.1);
}
.product-image {
transition: transform 0.5s ease;
}
.product-card:hover .product-image {
transform: scale(1.05);
}
.category-item {
transition: all 0.3s ease;
}
.category-item:hover {
background-color: rgba(49, 118, 255, 0.1);
transform: translateX(5px);
}
.subcategory-container {
max-height: 0;
overflow: hidden;
transition: max-height 0.3s ease;
}
.subcategory-container.open {
max-height: 500px;
}
.search-input {
transition: all 0.3s ease;
}
.search-input:focus {
box-shadow: 0 0 0 3px rgba(49, 118, 255, 0.2);
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
-webkit-appearance: none;
margin: 0;
}
.custom-checkbox {
display: inline-block;
position: relative;
cursor: pointer;
}
.custom-checkbox input {
position: absolute;
opacity: 0;
cursor: pointer;
}
.checkmark {
position: absolute;
top: 0;
left: 0;
height: 20px;
width: 20px;
background-color: #fff;
border: 2px solid #e5e7eb;
border-radius: 4px;
transition: all 0.2s ease;
}
.custom-checkbox:hover input ~ .checkmark {
border-color: #3176FF;
}
.custom-checkbox input:checked ~ .checkmark {
background-color: #3176FF;
border-color: #3176FF;
}
.checkmark:after {
content: "";
position: absolute;
display: none;
}
.custom-checkbox input:checked ~ .checkmark:after {
display: block;
}
.custom-checkbox .checkmark:after {
left: 6px;
top: 2px;
width: 5px;
height: 10px;
border: solid white;
border-width: 0 2px 2px 0;
transform: rotate(45deg);
}
.custom-switch {
position: relative;
display: inline-block;
width: 44px;
height: 24px;
}
.custom-switch input {
opacity: 0;
width: 0;
height: 0;
}
.switch-slider {
position: absolute;
cursor: pointer;
top: 0;
left: 0;
right: 0;
bottom: 0;
background-color: #e5e7eb;
transition: .4s;
border-radius: 34px;
}
.switch-slider:before {
position: absolute;
content: "";
height: 18px;
width: 18px;
left: 3px;
bottom: 3px;
background-color: white;
transition: .4s;
border-radius: 50%;
}
input:checked + .switch-slider {
background-color: #3176FF;
}
input:checked + .switch-slider:before {
transform: translateX(20px);
}
.custom-range {
-webkit-appearance: none;
width: 100%;
height: 6px;
border-radius: 5px;
background: #e5e7eb;
outline: none;
}
.custom-range::-webkit-slider-thumb {
-webkit-appearance: none;
appearance: none;
width: 18px;
height: 18px;
border-radius: 50%;
background: #3176FF;
cursor: pointer;
transition: all 0.2s ease;
}
.custom-range::-webkit-slider-thumb:hover {
transform: scale(1.1);
box-shadow: 0 0 0 3px rgba(49, 118, 255, 0.2);
}
.custom-radio {
display: inline-block;
position: relative;
cursor: pointer;
}
.custom-radio input {
position: absolute;
opacity: 0;
cursor: pointer;
}
.radio-mark {
position: absolute;
top: 0;
left: 0;
height: 20px;
width: 20px;
background-color: #fff;
border: 2px solid #e5e7eb;
border-radius: 50%;
transition: all 0.2s ease;
}
.custom-radio:hover input ~ .radio-mark {
border-color: #3176FF;
}
.custom-radio input:checked ~ .radio-mark {
border-color: #3176FF;
}
.radio-mark:after {
content: "";
position: absolute;
display: none;
}
.custom-radio input:checked ~ .radio-mark:after {
display: block;
}
.custom-radio .radio-mark:after {
top: 4px;
left: 4px;
width: 8px;
height: 8px;
border-radius: 50%;
background: #3176FF;
}
@keyframes fadeIn {
from { opacity: 0; transform: translateY(10px); }
to { opacity: 1; transform: translateY(0); }
}
.fade-in {
animation: fadeIn 0.5s ease forwards;
}
.chat-widget {
position: fixed;
bottom: 20px;
right: 20px;
z-index: 1000;
transition: all 0.3s ease;
}
.chat-widget:hover {
transform: scale(1.05);
}
.dropdown-content {
display: none;
position: absolute;
background-color: white;
min-width: 160px;
box-shadow: 0 8px 16px rgba(0,0,0,0.1);
z-index: 1;
border-radius: 8px;
animation: fadeIn 0.3s ease;
}
.dropdown:hover .dropdown-content {
display: block;
}
</style>
</head>
<body class="bg-gray-50">
<!-- Header -->
<header class="fixed top-0 left-0 right-0 bg-white shadow-sm z-50">
<div class="flex items-center justify-between px-6 py-4">
<div class="flex items-center">
<a href="#" class="text-3xl font-['Pacifico'] text-primary mr-10">GoodPump</a>
<nav class="hidden md:flex space-x-6">
<a href="#" class="text-primary font-medium">Басты бет</a>
<a href="#" class="text-gray-700 hover:text-primary transition-colors">Өнімдер</a>
<a href="#" class="text-gray-700 hover:text-primary transition-colors">Біз туралы</a>
<a href="#" class="text-gray-700 hover:text-primary transition-colors">Байланыс</a>
</nav>
</div>
<div class="flex items-center space-x-4">
<div class="relative">
<input type="text" placeholder="Search products..." class="search-input pl-10 pr-4 py-2 border border-gray-200 rounded focus:outline-none focus:border-primary text-sm w-64">
<div class="absolute left-3 top-1/2 transform -translate-y-1/2 w-5 h-5 flex items-center justify-center text-gray-400">
<i class="ri-search-line"></i>
</div>
</div>
<div class="relative w-10 h-10 flex items-center justify-center cursor-pointer">
<i class="ri-shopping-cart-2-line text-xl text-gray-700 hover:text-primary transition-colors"></i>
<span class="absolute -top-1 -right-1 bg-primary text-white text-xs rounded-full w-5 h-5 flex items-center justify-center">3</span>
</div>
<div class="dropdown relative">
<div class="w-10 h-10 flex items-center justify-center cursor-pointer">
<i class="ri-user-line text-xl text-gray-700 hover:text-primary transition-colors"></i>
</div>
<div class="dropdown-content right-0 mt-2">
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">My Account</a>
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Orders</a>
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Wishlist</a>
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Sign Out</a>
</div>
</div>
</div>
</div>
</header>
<div class="flex mt-20">
<!-- Left Sidebar -->
<aside class="w-64 bg-white shadow-sm h-screen sticky top-20 overflow-y-auto">
<div class="p-4">
<h2 class="text-lg font-semibold text-gray-800 mb-4">Санаттар</h2>
<ul>
<li class="mb-2">
<div class="category-item flex items-center justify-between px-3 py-2 rounded cursor-pointer" onclick="toggleSubcategory('centrifugal')">
<span class="text-gray-700">Орталықтан тепкіш насостар</span>
<div class="w-5 h-5 flex items-center justify-center">
<i class="ri-arrow-down-s-line text-gray-500"></i>
</div>
</div>
<div id="centrifugal-subcategories" class="subcategory-container pl-6">
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Соңғы сорғыш</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Көп сатылы</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Бөлшектелген корпусты</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Тік орналасқан</a>
</div>
</li>
<li class="mb-2">
<div class="category-item flex items-center justify-between px-3 py-2 rounded cursor-pointer" onclick="toggleSubcategory('submersible')">
<span class="text-gray-700">Су астындағы насостар</span>
<div class="w-5 h-5 flex items-center justify-center">
<i class="ri-arrow-down-s-line text-gray-500"></i>
</div>
</div>
<div id="submersible-subcategories" class="subcategory-container pl-6">
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Ағынды сулар</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Су төгу жүйесі</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Құдық тесігі</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Ұнтақтағыш</a>
</div>
</li>
<li class="mb-2">
<div class="category-item flex items-center justify-between px-3 py-2 rounded cursor-pointer" onclick="toggleSubcategory('positive')">
<span class="text-gray-700">Позитивті ығыстыру</span>
<div class="w-5 h-5 flex items-center justify-center">
<i class="ri-arrow-down-s-line text-gray-500"></i>
</div>
</div>
<div id="positive-subcategories" class="subcategory-container pl-6">
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Тісті доңғалақ</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Тырнақша</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Қалқа</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Перистальтикалық</a>
</div>
</li>
<li class="mb-2">
<div class="category-item flex items-center justify-between px-3 py-2 rounded cursor-pointer" onclick="toggleSubcategory('industrial')">
<span class="text-gray-700">Өнеркәсіптік насостар</span>
<div class="w-5 h-5 flex items-center justify-center">
<i class="ri-arrow-down-s-line text-gray-500"></i>
</div>
</div>
<div id="industrial-subcategories" class="subcategory-container pl-6">
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Химиялық</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Мұнай және газ
</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Кен өндіру</a>
<a href="#" class="block py-2 text-sm text-gray-600 hover:text-primary">Food Processing</a>
</div>
</li>
</ul>
<h2 class="text-lg font-semibold text-gray-800 mt-8 mb-4">Filter by</h2>
<div class="mb-6">
<h3 class="text-sm font-medium text-gray-700 mb-3">Price Range</h3>
<input type="range" id="price-range" min="0" max="10000" value="5000" class="custom-range mb-2">
<div class="flex justify-between text-sm text-gray-600">
<span>$0</span>
<span id="price-value">$5,000</span>
<span>$10,000</span>
</div>
</div>
<div class="mb-6">
<h3 class="text-sm font-medium text-gray-700 mb-3">Flow Rate (GPM)</h3>
<div class="space-y-2">
<label class="custom-checkbox flex items-center">
<input type="checkbox" class="absolute opacity-0">
<span class="checkmark"></span>
<span class="ml-7 text-sm text-gray-700">0-100</span>
</label>
<label class="custom-checkbox flex items-center">
<input type="checkbox" class="absolute opacity-0">
<span class="checkmark"></span>
<span class="ml-7 text-sm text-gray-700">101-500</span>
</label>
<label class="custom-checkbox flex items-center">
<input type="checkbox" class="absolute opacity-0">
<span class="checkmark"></span>
<span class="ml-7 text-sm text-gray-700">501-1000</span>
</label>
<label class="custom-checkbox flex items-center">
<input type="checkbox" class="absolute opacity-0">
<span class="checkmark"></span>
<span class="ml-7 text-sm text-gray-700">1000+</span>
</label>
</div>
</div>
<div class="mb-6">
<h3 class="text-sm font-medium text-gray-700 mb-3">Power</h3>
<div class="space-y-2">
<label class="custom-radio flex items-center">
<input type="radio" name="power" class="absolute opacity-0">
<span class="radio-mark"></span>
<span class="ml-7 text-sm text-gray-700">Electric</span>
</label>
<label class="custom-radio flex items-center">
<input type="radio" name="power" class="absolute opacity-0">
<span class="radio-mark"></span>
<span class="ml-7 text-sm text-gray-700">Hydraulic</span>
</label>
<label class="custom-radio flex items-center">
<input type="radio" name="power" class="absolute opacity-0">
<span class="radio-mark"></span>
<span class="ml-7 text-sm text-gray-700">Pneumatic</span>
</label>
</div>
</div>
<div class="mb-6">
<h3 class="text-sm font-medium text-gray-700 mb-3">Features</h3>
<div class="flex items-center justify-between mb-2">
<span class="text-sm text-gray-700">Self-Priming</span>
<label class="custom-switch">
<input type="checkbox">
<span class="switch-slider"></span>
</label>
</div>
<div class="flex items-center justify-between mb-2">
<span class="text-sm text-gray-700">Variable Speed</span>
<label class="custom-switch">
<input type="checkbox">
<span class="switch-slider"></span>
</label>
</div>
<div class="flex items-center justify-between">
<span class="text-sm text-gray-700">ATEX Certified</span>
<label class="custom-switch">
<input type="checkbox">
<span class="switch-slider"></span>
</label>
</div>
</div>
<button class="w-full bg-primary text-white py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Apply Filters</button>
</div>
</aside>
<!-- Main Content -->
<main class="flex-1 p-6">
<!-- Hero Section -->
<section class="relative rounded-lg overflow-hidden mb-10" style="background-image: url('https://readdy.ai/api/search-image?query=industrial%2520pump%2520manufacturing%2520facility%2520with%2520modern%2520equipment%2520and%2520blue%2520pumps%2520in%2520foreground%252C%2520clean%2520professional%2520environment%252C%2520high-tech%2520industrial%2520setting%252C%2520professional%2520lighting%252C%2520wide%2520angle%2520view&width=1200&height=400&seq=12345&orientation=landscape'); background-size: cover; background-position: center;">
<div class="absolute inset-0 bg-gradient-to-r from-primary/90 to-transparent"></div>
<div class="relative z-10 p-10 max-w-2xl">
<h1 class="text-4xl font-bold text-white mb-4">GoodPump</h1>
<p class="text-white/90 text-lg mb-6">Аяз ағамыздың бастауымен барлық өндірістік қажеттіліктеріңізге арналған сенімді, тиімді және инновациялық насос технологиясын ұсынып келеміз.</p>
<div class="flex space-x-4">
<a href="#products" class="bg-white text-primary px-6 py-3 rounded-button font-medium hover:bg-gray-100 transition-colors whitespace-nowrap">Өнімдерді қарау</a>
<a href="#contact" class="bg-transparent border-2 border-white text-white px-6 py-3 rounded-button font-medium hover:bg-white/10 transition-colors whitespace-nowrap">Байланыс</a>
</div>
</div>
</section>
<!-- Product Filtering -->
<section class="bg-white rounded-lg shadow-sm p-4 mb-8">
<div class="flex flex-wrap items-center justify-between">
<h2 class="text-xl font-semibold text-gray-800 mb-2 sm:mb-0">Барлық өнімдер</h2>
<div class="flex flex-wrap items-center space-x-4">
<div class="flex items-center space-x-2">
<label class="text-sm text-gray-600">Сұрыптау:</label>
<div class="relative">
<div class="flex items-center border border-gray-200 rounded px-3 py-2 bg-white cursor-pointer">
<span class="text-sm text-gray-700 mr-2">Танымалдылық</span>
<div class="w-5 h-5 flex items-center justify-center">
<i class="ri-arrow-down-s-line text-gray-500"></i>
</div>
</div>
<div class="dropdown-content mt-1 w-full">
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Танымалдылық</a>
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Баға: төменнен жоғарыға</a>
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Баға: жоғарыдан төменге</a>
<a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Жаңа</a>
</div>
</div>
</div>
<div class="flex items-center space-x-2">
<label class="text-sm text-gray-600">View:</label>
<div class="flex border border-gray-200 rounded overflow-hidden">
<button class="w-8 h-8 flex items-center justify-center bg-primary text-white">
<i class="ri-layout-grid-line"></i>
</button>
<button class="w-8 h-8 flex items-center justify-center bg-white text-gray-600 hover:bg-gray-100">
<i class="ri-list-check"></i>
</button>
</div>
</div>
</div>
</div>
</section>
<!-- Products Grid -->
<section id="products" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-10">
<!-- Product 1 -->
<div class="product-card bg-white rounded-lg shadow-sm overflow-hidden">
<div class="h-48 overflow-hidden relative">
<img src="https://readdy.ai/api/search-image?query=industrial%2520centrifugal%2520pump%2520with%2520blue%2520casing%2520on%2520clean%2520white%2520background%252C%2520professional%2520product%2520photography%252C%2520detailed%2520mechanical%2520parts%2520visible%252C%2520high%2520resolution%252C%2520studio%2520lighting&width=400&height=300&seq=1001&orientation=landscape" alt="Centrifugal Pump" class="product-image w-full h-full object-cover object-top">
<div class="absolute top-2 right-2 bg-primary text-white text-xs px-2 py-1 rounded">Bestseller</div>
</div>
<div class="p-4">
<h3 class="text-lg font-semibold text-gray-800 mb-1">CP-5000 Орталықтан тепкіш насос</h3>
<p class="text-sm text-gray-600 mb-3">Өнеркәсіптік қолдануға арналған жоғары тиімділікпен жұмыс істейтін соңғы сорғылық орталықтан тепкіш насос.
</p>
<div class="flex items-center mb-3">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-half-fill"></i>
</div>
<span class="text-xs text-gray-500 ml-1">(128)</span>
</div>
<div class="flex items-center justify-between">
<span class="text-xl font-bold text-gray-800">$3,499.99</span>
<button class="bg-primary text-white px-4 py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Себетке қосу</button>
</div>
</div>
</div>
<!-- Product 2 -->
<div class="product-card bg-white rounded-lg shadow-sm overflow-hidden">
<div class="h-48 overflow-hidden relative">
<img src="https://readdy.ai/api/search-image?query=industrial%2520submersible%2520pump%2520with%2520blue%2520and%2520silver%2520components%2520on%2520clean%2520white%2520background%252C%2520professional%2520product%2520photography%252C%2520detailed%2520mechanical%2520parts%2520visible%252C%2520high%2520resolution%252C%2520studio%2520lighting&width=400&height=300&seq=1002&orientation=landscape" alt="Submersible Pump" class="product-image w-full h-full object-cover object-top">
<div class="absolute top-2 right-2 bg-green-500 text-white text-xs px-2 py-1 rounded">Жаңа</div>
</div>
<div class="p-4">
<h3 class="text-lg font-semibold text-gray-800 mb-1">сSP-2200 Батып жұмыс істейтін насос</h3>
<p class="text-sm text-gray-600 mb-3">Қоқыс және ағынды суларды өңдеуге арналған ауыр жүкке арналған батып жұмыс істейтін насос.
</p>
<div class="flex items-center mb-3">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-line"></i>
</div>
<span class="text-xs text-gray-500 ml-1">(86)</span>
</div>
<div class="flex items-center justify-between">
<span class="text-xl font-bold text-gray-800">$2,899.99</span>
<button class="bg-primary text-white px-4 py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Себетке қосу</button>
</div>
</div>
</div>
<!-- Product 3 -->
<div class="product-card bg-white rounded-lg shadow-sm overflow-hidden">
<div class="h-48 overflow-hidden relative">
<img src="https://readdy.ai/api/search-image?query=industrial%2520gear%2520pump%2520with%2520blue%2520housing%2520on%2520clean%2520white%2520background%252C%2520professional%2520product%2520photography%252C%2520detailed%2520mechanical%2520parts%2520visible%252C%2520high%2520resolution%252C%2520studio%2520lighting&width=400&height=300&seq=1003&orientation=landscape" alt="Gear Pump" class="product-image w-full h-full object-cover object-top">
</div>
<div class="p-4">
<h3 class="text-lg font-semibold text-gray-800 mb-1">GP-1500 Беріліс насосы</h3>
<p class="text-sm text-gray-600 mb-3">Жоғары тұтқырлықты сұйықтықтарды тасымалдауға арналған дәлдікті беріліс насосы.
</p>
<div class="flex items-center mb-3">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
</div>
<span class="text-xs text-gray-500 ml-1">(214)</span>
</div>
<div class="flex items-center justify-between">
<span class="text-xl font-bold text-gray-800">$1,799.99</span>
<button class="bg-primary text-white px-4 py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Себетке қосу</button>
</div>
</div>
</div>
<!-- Product 4 -->
<div class="product-card bg-white rounded-lg shadow-sm overflow-hidden">
<div class="h-48 overflow-hidden relative">
<img src="https://readdy.ai/api/search-image?query=industrial%2520chemical%2520pump%2520with%2520blue%2520components%2520on%2520clean%2520white%2520background%252C%2520professional%2520product%2520photography%252C%2520detailed%2520mechanical%2520parts%2520visible%252C%2520high%2520resolution%252C%2520studio%2520lighting&width=400&height=300&seq=1004&orientation=landscape" alt="Chemical Pump" class="product-image w-full h-full object-cover object-top">
<div class="absolute top-2 right-2 bg-orange-500 text-white text-xs px-2 py-1 rounded">Сату</div>
</div>
<div class="p-4">
<h3 class="text-lg font-semibold text-gray-800 mb-1">CP-3000 Химиялық насос</h3>
<p class="text-sm text-gray-600 mb-3">Қышқыл және коррозиялық химиялық заттарға төзімді насос.
</p>
<div class="flex items-center mb-3">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-half-fill"></i>
<i class="ri-star-line"></i>
</div>
<span class="text-xs text-gray-500 ml-1">(92)</span>
</div>
<div class="flex items-center justify-between">
<div>
<span class="text-xl font-bold text-gray-800">$4,199.99</span>
<span class="text-sm text-gray-500 line-through ml-2">$4,599.99</span>
</div>
<button class="bg-primary text-white px-4 py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Себетке қосу</button>
</div>
</div>
</div>
<!-- Product 5 -->
<div class="product-card bg-white rounded-lg shadow-sm overflow-hidden">
<div class="h-48 overflow-hidden relative">
<img src="https://readdy.ai/api/search-image?query=industrial%2520multi-stage%2520centrifugal%2520pump%2520with%2520blue%2520casing%2520on%2520clean%2520white%2520background%252C%2520professional%2520product%2520photography%252C%2520detailed%2520mechanical%2520parts%2520visible%252C%2520high%2520resolution%252C%2520studio%2520lighting&width=400&height=300&seq=1005&orientation=landscape" alt="Multi-Stage Pump" class="product-image w-full h-full object-cover object-top">
</div>
<div class="p-4">
<h3 class="text-lg font-semibold text-gray-800 mb-1">MS-7000 Көп сатылы насос</h3>
<p class="text-sm text-gray-600 mb-3">Су жабдықтау жүйелеріне арналған жоғары қысымды көп сатылы орталықтан тепкіш насос.
</p>
<div class="flex items-center mb-3">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-line"></i>
</div>
<span class="text-xs text-gray-500 ml-1">(157)</span>
</div>
<div class="flex items-center justify-between">
<span class="text-xl font-bold text-gray-800">$5,299.99</span>
<button class="bg-primary text-white px-4 py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Себетке қосу</button>
</div>
</div>
</div>
<!-- Product 6 -->
<div class="product-card bg-white rounded-lg shadow-sm overflow-hidden">
<div class="h-48 overflow-hidden relative">
<img src="https://readdy.ai/api/search-image?query=industrial%2520diaphragm%2520pump%2520with%2520blue%2520components%2520on%2520clean%2520white%2520background%252C%2520professional%2520product%2520photography%252C%2520detailed%2520mechanical%2520parts%2520visible%252C%2520high%2520resolution%252C%2520studio%2520lighting&width=400&height=300&seq=1006&orientation=landscape" alt="Diaphragm Pump" class="product-image w-full h-full object-cover object-top">
</div>
<div class="p-4">
<h3 class="text-lg font-semibold text-gray-800 mb-1">DP-4000 Диафрагмалы насос</h3>
<p class="text-sm text-gray-600 mb-3">Қатты заттарды тасымалдау үшін ауамен жұмыс істейтін қос диафрагмалы насос.
</p>
<div class="flex items-center mb-3">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-half-fill"></i>
</div>
<span class="text-xs text-gray-500 ml-1">(76)</span>
</div>
<div class="flex items-center justify-between">
<span class="text-xl font-bold text-gray-800">$2,499.99</span>
<button class="bg-primary text-white px-4 py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Себетке қосу</button>
</div>
</div>
</div>
</section>
<!-- Pagination -->
<div class="flex justify-center mb-10">
<div class="flex space-x-1" id="pagination">
<button class="w-10 h-10 flex items-center justify-center rounded border border-gray-200 text-gray-600 hover:border-primary hover:text-primary" data-page="prev">
<i class="ri-arrow-left-s-line"></i>
</button>
<button class="w-10 h-10 flex items-center justify-center rounded bg-primary text-white" data-page="1">1</button>
<button class="w-10 h-10 flex items-center justify-center rounded border border-gray-200 text-gray-600 hover:border-primary hover:text-primary" data-page="2">2</button>
<button class="w-10 h-10 flex items-center justify-center rounded border border-gray-200 text-gray-600 hover:border-primary hover:text-primary" data-page="3">3</button>
<button class="w-10 h-10 flex items-center justify-center rounded border border-gray-200 text-gray-600 hover:border-primary hover:text-primary" data-page="4">4</button>
<button class="w-10 h-10 flex items-center justify-center rounded border border-gray-200 text-gray-600 hover:border-primary hover:text-primary" data-page="5">5</button>
<button class="w-10 h-10 flex items-center justify-center rounded border border-gray-200 text-gray-600 hover:border-primary hover:text-primary" data-page="next">
<i class="ri-arrow-right-s-line"></i>
</button>
</div>
</div>
<!-- Contact Section -->
<section id="contact" class="bg-white rounded-lg shadow-sm p-8 mb-10">
<h2 class="text-2xl font-semibold text-gray-800 mb-6">Байланыс</h2>
<div class="grid grid-cols-1 md:grid-cols-2 gap-8">
<div>
<form>
<div class="mb-4">
<label for="name" class="block text-sm font-medium text-gray-700 mb-1">Толық аты-жөні</label>
<input type="text" id="name" class="w-full px-4 py-2 border border-gray-200 rounded focus:outline-none focus:border-primary">
</div>
<div class="mb-4">
<label for="email" class="block text-sm font-medium text-gray-700 mb-1">Электрондық пошта мекенжайы</label>
<input type="email" id="email" class="w-full px-4 py-2 border border-gray-200 rounded focus:outline-none focus:border-primary">
</div>
<div class="mb-4">
<label for="phone" class="block text-sm font-medium text-gray-700 mb-1">Телефон номер</label>
<input type="tel" id="phone" class="w-full px-4 py-2 border border-gray-200 rounded focus:outline-none focus:border-primary">
</div>
<div class="mb-4">
<label for="subject" class="block text-sm font-medium text-gray-700 mb-1">Зат</label>
<input type="text" id="subject" class="w-full px-4 py-2 border border-gray-200 rounded focus:outline-none focus:border-primary">
</div>
<div class="mb-4">
<label for="message" class="block text-sm font-medium text-gray-700 mb-1">Хабарлама</label>
<textarea id="message" rows="4" class="w-full px-4 py-2 border border-gray-200 rounded focus:outline-none focus:border-primary"></textarea>
</div>
<button type="submit" class="bg-primary text-white px-6 py-3 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Хабарлама жіберу</button>
</form>
</div>
<div>
<div class="mb-6">
<h3 class="text-lg font-medium text-gray-800 mb-2">Біздің офис</h3>
<p class="text-gray-600 mb-1">Нұрсат 165</p>
<p class="text-gray-600">Шымкент</p>
</div>
<div class="mb-6">
<h3 class="text-lg font-medium text-gray-800 mb-2">Байланыс ақпараты</h3>
<p class="flex items-center text-gray-600 mb-2">
<div class="w-5 h-5 flex items-center justify-center mr-2 text-primary">
<i class="ri-phone-line"></i>
</div>
+7 (777) 677-70-34
</p>
<p class="flex items-center text-gray-600 mb-2">
<div class="w-5 h-5 flex items-center justify-center mr-2 text-primary">
<i class="ri-mail-line"></i>
</div>
qanatq@bk.ru
</p>
<p class="flex items-center text-gray-600">
<div class="w-5 h-5 flex items-center justify-center mr-2 text-primary">
<i class="ri-global-line"></i>
</div>
qanatq@bk.ru
</p>
</div>
<div>
<h3 class="text-lg font-medium text-gray-800 mb-2">Жұмыс уақыты</h3>
<p class="text-gray-600 mb-1">Дүйсенбі - Жұма: 8:00-ден 18:00-ге дейін</p>
<p class="text-gray-600 mb-1">Сенбі: 9:00-ден 13:00-ге дейін</p>
<p class="text-gray-600">Жексенбі: демалыс</p>
</div>
<div class="mt-6">
<h3 class="text-lg font-medium text-gray-800 mb-3">Бізбен байланысыңыз</h3>
<div class="flex space-x-3">
<a href="#" class="w-10 h-10 rounded-full bg-gray-100 flex items-center justify-center text-gray-600 hover:bg-primary hover:text-white transition-colors">
<i class="ri-facebook-fill"></i>
</a>
<a href="#" class="w-10 h-10 rounded-full bg-gray-100 flex items-center justify-center text-gray-600 hover:bg-primary hover:text-white transition-colors">
<i class="ri-twitter-x-fill"></i>
</a>
<a href="#" class="w-10 h-10 rounded-full bg-gray-100 flex items-center justify-center text-gray-600 hover:bg-primary hover:text-white transition-colors">
<i class="ri-linkedin-fill"></i>
</a>
<a href="#" class="w-10 h-10 rounded-full bg-gray-100 flex items-center justify-center text-gray-600 hover:bg-primary hover:text-white transition-colors">
<i class="ri-youtube-fill"></i>
</a>
</div>
</div>
</div>
</div>
</section>
</main>
</div>
<!-- Footer -->
<footer class="bg-gray-800 text-white pt-12 pb-6">
<div class="container mx-auto px-6">
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 mb-8">
<div>
<a href="#" class="text-3xl font-['Pacifico'] text-white mb-4 block">GoodPump</a>
<p class="text-gray-400 mb-4">Аяз ағамыздың бастауымен барлық өндірістік қажеттіліктеріңізге арналған сенімді, тиімді және инновациялық насос технологиясын ұсынып келеміз.</p>
<div class="flex space-x-3">
<a href="#" class="w-8 h-8 rounded-full bg-gray-700 flex items-center justify-center text-gray-300 hover:bg-primary hover:text-white transition-colors">
<i class="ri-facebook-fill"></i>
</a>
<a href="#" class="w-8 h-8 rounded-full bg-gray-700 flex items-center justify-center text-gray-300 hover:bg-primary hover:text-white transition-colors">
<i class="ri-twitter-x-fill"></i>
</a>
<a href="#" class="w-8 h-8 rounded-full bg-gray-700 flex items-center justify-center text-gray-300 hover:bg-primary hover:text-white transition-colors">
<i class="ri-linkedin-fill"></i>
</a>
<a href="#" class="w-8 h-8 rounded-full bg-gray-700 flex items-center justify-center text-gray-300 hover:bg-primary hover:text-white transition-colors">
<i class="ri-youtube-fill"></i>
</a>
</div>
</div>
<div>
<h3 class="text-lg font-semibold mb-4">Жылдам сілтемелер</h3>
<ul class="space-y-2">
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Home</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Products</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">About Us</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Contact</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Blog</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Careers</a></li>
</ul>
</div>
<div>
<h3 class="text-lg font-semibold mb-4">Өнімдер</h3>
<ul class="space-y-2">
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Centrifugal Pumps</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Submersible Pumps</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Positive Displacement</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Industrial Pumps</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Spare Parts</a></li>
<li><a href="#" class="text-gray-400 hover:text-white transition-colors">Accessories</a></li>
</ul>
</div>
<div>
<h3 class="text-lg font-semibold mb-4">Хабарлама</h3>
<p class="text-gray-400 mb-4">Соңғы өнім жаңартулары мен салалық жаңалықтар үшін біздің жаңалықтарымызға жазылыңыз.</p>
<form>
<div class="flex mb-3">
<input type="email" placeholder="Your email address" class="px-4 py-2 rounded-l-button w-full text-gray-800 border-none focus:outline-none">
<button type="submit" class="bg-primary text-white px-4 py-2 rounded-r-button hover:bg-blue-600 transition-colors whitespace-nowrap">Subscribe</button>
</div>
</form>
<p class="text-gray-500 text-sm">Жазылу арқылы сіз біздің Құпиялық саясатымызға келісесіз.</p>
</div>
</div>
<div class="border-t border-gray-700 pt-6">
<div class="flex flex-col md:flex-row justify-between items-center">
<p class="text-gray-400 text-sm mb-4 md:mb-0">© 2025 GoodPump. Барлық құқықтар қорғалған.</p>
<div class="flex space-x-4">
<a href="#" class="text-gray-400 hover:text-white transition-colors text-sm">Жеке деректерді қорғау саясатыҚызмет көрсету ережелері</a>
<a href="#" class="text-gray-400 hover:text-white transition-colors text-sm">Қызмет көрсету ережелері</a>
<a href="#" class="text-gray-400 hover:text-white transition-colors text-sm">Сайт картасы</a>
</div>
</div>
<div class="flex justify-center mt-6 space-x-4">
<div class="w-10 h-6 flex items-center justify-center">
<i class="ri-visa-fill text-2xl text-gray-400"></i>
</div>
<div class="w-10 h-6 flex items-center justify-center">
<i class="ri-mastercard-fill text-2xl text-gray-400"></i>
</div>
<div class="w-10 h-6 flex items-center justify-center">
<i class="ri-paypal-fill text-2xl text-gray-400"></i>
</div>
<div class="w-10 h-6 flex items-center justify-center">
<i class="ri-amazon-pay-fill text-2xl text-gray-400"></i>
</div>
<div class="w-10 h-6 flex items-center justify-center">
<i class="ri-apple-fill text-2xl text-gray-400"></i>
</div>
</div>
</div>
</div>
</footer>
<!-- Chat Widget -->
<div class="chat-widget">
<button class="w-16 h-16 rounded-full bg-primary text-white shadow-lg flex items-center justify-center">
<i class="ri-chat-3-line text-2xl"></i>
</button>
</div>
<script>
document.addEventListener("DOMContentLoaded", function () {
  const productsGrid = document.getElementById("products");
  const pagination = document.getElementById("pagination");
  let currentPage = 1;
  const productsPerPage = 6;
  let isLoading = false;
  const loadingIndicator = document.createElement("div");
  loadingIndicator.className =
    "fixed inset-0 bg-white/80 flex items-center justify-center z-50";
  loadingIndicator.innerHTML = `
<div class="flex flex-col items-center">
<div class="w-12 h-12 border-4 border-primary border-t-transparent rounded-full animate-spin"></div>
<p class="mt-4 text-gray-600">Loading products...</p>
</div>
`;
  function showLoading() {
    document.body.appendChild(loadingIndicator);
    isLoading = true;
  }
  function hideLoading() {
    loadingIndicator.remove();
    isLoading = false;
  }
  function updatePaginationUI(newPage) {
    const buttons = pagination.querySelectorAll("button[data-page]");
    buttons.forEach((button) => {
      const page = button.dataset.page;
      if (!isNaN(page) && parseInt(page) === newPage) {
        button.className =
          "w-10 h-10 flex items-center justify-center rounded bg-primary text-white";
      } else {
        button.className =
          "w-10 h-10 flex items-center justify-center rounded border border-gray-200 text-gray-600 hover:border-primary hover:text-primary";
      }
    });
  }
  async function loadProducts(page) {
    if (isLoading) return;
    showLoading();
    try {
      await new Promise((resolve) => setTimeout(resolve, 800));
      const newProducts = [];
      for (let i = 1; i <= 6; i++) {
        const productNum = (page - 1) * 6 + i;
        newProducts.push(`
<div class="product-card bg-white rounded-lg shadow-sm overflow-hidden fade-in">
<div class="h-48 overflow-hidden relative">
<img src="https://readdy.ai/api/search-image?query=industrial%2520pump%2520product%2520$%7BproductNum%7D%2520with%2520blue%2520components%2520on%2520clean%2520white%2520background%252C%2520professional%2520product%2520photography%252C%2520detailed%2520mechanical%2520parts%2520visible%252C%2520high%2520resolution%252C%2520studio%2520lighting&width=400&height=300&seq=${1000 + productNum}&orientation=landscape" 
alt="Product ${productNum}" 
class="product-image w-full h-full object-cover object-top">
${productNum % 3 === 0 ? '<div class="absolute top-2 right-2 bg-green-500 text-white text-xs px-2 py-1 rounded">New</div>' : ""}
</div>
<div class="p-4">
<h3 class="text-lg font-semibold text-gray-800 mb-1">Industrial Pump ${productNum}</h3>
<p class="text-sm text-gray-600 mb-3">Advanced pump solution for industrial applications.</p>
<div class="flex items-center mb-3">
<div class="flex text-yellow-400">
${Array(5)
  .fill("")
  .map((_, i) => `<i class="ri-star-${i < 4 ? "fill" : "line"}"></i>`)
  .join("")}
</div>
<span class="text-xs text-gray-500 ml-1">(${Math.floor(Math.random() * 200) + 50})</span>
</div>
<div class="flex items-center justify-between">
<span class="text-xl font-bold text-gray-800">$${(Math.floor(Math.random() * 3000) + 2000).toLocaleString()}</span>
<button class="bg-primary text-white px-4 py-2 rounded-button hover:bg-blue-600 transition-colors whitespace-nowrap">Add to Cart</button>
</div>
</div>
</div>
`);
      }
      productsGrid.innerHTML = newProducts.join("");
      currentPage = page;
      updatePaginationUI(currentPage);
      window.scrollTo({
        top: productsGrid.offsetTop - 100,
        behavior: "smooth",
      });
    } catch (error) {
      console.error("Error loading products:", error);
    } finally {
      hideLoading();
    }
  }
  pagination.addEventListener("click", async (e) => {
    const button = e.target.closest("button");
    if (!button) return;
    const page = button.dataset.page;
    if (!page) return;
    let newPage = currentPage;
    if (page === "prev") {
      if (currentPage > 1) newPage = currentPage - 1;
    } else if (page === "next") {
      if (currentPage < 5) newPage = currentPage + 1;
    } else {
      newPage = parseInt(page);
    }
    if (newPage !== currentPage) {
      await loadProducts(newPage);
    }
  });
  window.toggleSubcategory = function (id) {
    const subcategories = document.getElementById(`${id}-subcategories`);
    subcategories.classList.toggle("open");
    const arrow = subcategories.previousElementSibling.querySelector("i");
    if (subcategories.classList.contains("open")) {
      arrow.classList.remove("ri-arrow-down-s-line");
      arrow.classList.add("ri-arrow-up-s-line");
    } else {
      arrow.classList.remove("ri-arrow-up-s-line");
      arrow.classList.add("ri-arrow-down-s-line");
    }
  };
});
document.addEventListener("DOMContentLoaded", function () {
  // Price range slider
  const priceRange = document.getElementById("price-range");
  const priceValue = document.getElementById("price-value");
  const products = document.querySelectorAll(".product-card");
  const applyFiltersBtn = document.querySelector(
    'button:contains("Apply Filters")',
  );
  let currentFilters = {
    price: 5000,
    flowRate: [],
    power: "",
    features: {
      selfPriming: false,
      variableSpeed: false,
      atexCertified: false,
    },
  };
  // Price range handler
  priceRange.addEventListener("input", function () {
    const value = this.value;
    currentFilters.price = parseInt(value);
    priceValue.textContent = `$${parseInt(value).toLocaleString()}`;
  });
  // Flow rate checkboxes
  const flowRateCheckboxes = document.querySelectorAll(
    '.custom-checkbox input[type="checkbox"]',
  );
  flowRateCheckboxes.forEach((checkbox) => {
    checkbox.addEventListener("change", function () {
      const flowRate = this.nextElementSibling.nextElementSibling.textContent;
      if (this.checked) {
        currentFilters.flowRate.push(flowRate);
      } else {
        currentFilters.flowRate = currentFilters.flowRate.filter(
          (rate) => rate !== flowRate,
        );
      }
    });
  });
  // Power radio buttons
  const powerRadios = document.querySelectorAll(
    '.custom-radio input[type="radio"]',
  );
  powerRadios.forEach((radio) => {
    radio.addEventListener("change", function () {
      const power = this.nextElementSibling.nextElementSibling.textContent;
      currentFilters.power = this.checked ? power : "";
      // Uncheck other radio buttons
      powerRadios.forEach((r) => {
        if (r !== this) r.checked = false;
      });
    });
  });
  // Feature switches
  const featureSwitches = document.querySelectorAll(
    '.custom-switch input[type="checkbox"]',
  );
  featureSwitches.forEach((switch_) => {
    switch_.addEventListener("change", function () {
      const feature = this.parentElement.previousElementSibling.textContent
        .toLowerCase()
        .replace(/-/g, "");
      currentFilters.features[feature] = this.checked;
    });
  });
  // Apply filters button
  document
    .querySelector("button.w-full.bg-primary")
    .addEventListener("click", function () {
      products.forEach((product) => {
        const price = parseFloat(
          product
            .querySelector(".text-xl.font-bold")
            .textContent.replace(/[$,]/g, ""),
        );
        // Show/hide based on price
        const matchesPrice = price <= currentFilters.price;
        // Show/hide based on selected filters
        const matchesFlowRate =
          currentFilters.flowRate.length === 0 ||
          currentFilters.flowRate.some((rate) => {
            // This is a simplified check. In real implementation, you'd have actual product data
            return true;
          });
        const matchesPower = !currentFilters.power || true; // Simplified check
        // Show/hide based on features
        const matchesFeatures = Object.values(currentFilters.features).every(
          (feature) => !feature || true,
        ); // Simplified check
        // Apply visibility
        if (
          matchesPrice &&
          matchesFlowRate &&
          matchesPower &&
          matchesFeatures
        ) {
          product.style.display = "";
          product.style.animation = "fadeIn 0.5s ease forwards";
        } else {
          product.style.display = "none";
        }
      });
      // Show feedback
      const feedbackDiv = document.createElement("div");
      feedbackDiv.className =
        "fixed top-4 right-4 bg-green-500 text-white px-6 py-3 rounded shadow-lg z-50 fade-in";
      feedbackDiv.textContent = "Filters applied successfully";
      document.body.appendChild(feedbackDiv);
      setTimeout(() => {
        feedbackDiv.remove();
      }, 3000);
    });
  // Reset functionality for checkboxes
  checkboxes.forEach((checkbox) => {
    checkbox.addEventListener("click", function () {
      this.checked = !this.checked;
    });
  });
});
</script>
</body>
</html>
