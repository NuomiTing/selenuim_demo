'''
Selenium基础，相当于hello world，真正用自动化测试应该是要用到框架
'''
# import sys
# import os
# curPath = os.path.abspath(os.path.dirname(__file__))
# rootPath = os.path.split(curPath)[0]
# sys.path.append(rootPath)

from selenium import webdriver

# 创建一个 Chrome WebDriver 实例
driver = webdriver.Chrome()

# # 访问指定的url：url必须要带http://的字样，如果这一段缺失，就会报错
# driver.get('https://www.baidu.com/')
# # 查找元素并输入
# driver.find_element_by_id("kw").send_keys("百度搜索")
# # 查找元素点击
# driver.find_element_by_id("su").click()

