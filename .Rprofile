# 抑制包启动消息
suppressPackageStartupMessages(require(purrr)) # 函数式编程
suppressPackageStartupMessages(require(rlang)) # stack
if (interactive()) {
    suppressPackageStartupMessages(require(devtools)) # R包构建
    suppressPackageStartupMessages(require(gert))     # libgit2继承

    # 在R脚本或控制台中执行
    options(shiny.launch.browser = FALSE)
}

options(
    usethis.description = list(
        "Authors@R" = utils::person(
            "Rhetor", "Xu",
            email = "41858826@qq.com",
            role = c("aut", "cre"),
            comment = c(ORCID = "0009-0009-6920-4363")
        ),
        License = "MIT + file LICENSE"
    )
)

# 递归查找函数
where <- function(name, env = caller_env()) {
    if (identical(env, empty_env())) {
        # Base case
        stop("Can't find ", name, call. = FALSE)
    } else if (env_has(env, name)) {
        # Success case
        env
    } else {
        # Recursive case
        where(name, env_parent(env))
    }
}


# warn on partial matches
options(
    warnPartialMatchAttr = TRUE,
    warnPartialMatchDollar = TRUE,
    warnPartialMatchArgs = TRUE
)

# 设置格式化选项
options(
    # 缩进宽度（默认为2）
    formatR.indent = 2,

    # 代码宽度（默认为80）
    formatR.width = 80,

    # 空格设置
    formatR.blank = TRUE,

    # 箭头运算符周围加空格
    formatR.arrow = TRUE,

    # 大括号位置
    formatR.brace.next.line = FALSE,

    # 注释缩进
    formatR.comment = TRUE
)


# 本地开发包生成在线文档
# library(pkgdown)
# build_site()

# enable autocompletions for package names in
# `require()`, `library()`
utils::rc.settings(ipck = TRUE)

# warnings are errors
options(warn = 2)

# fancy quotes are annoying and lead to
# 'copy + paste' bugs / frustrations
options(useFancyQuotes = FALSE)


# utils::file.edit('~/.Rprofile')

local({
    # 尝试获取系统默认浏览器
    default_browser <- function() {
        # 检查是否已设置 R_BROWSER
        if (nzchar(Sys.getenv("R_BROWSER"))) {
            return(Sys.getenv("R_BROWSER"))
        }

        # 根据不同操作系统检测浏览器
        if (.Platform$OS.type == "windows") {
            # Windows: 尝试查找 Chrome、Edge 或 Firefox
            edge_path <- "C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
            if (file.exists(edge_path)) {
                cat(paste0('options(browser = "', edge_path, '")\n'))
                return(edge_path)
            } else {
                return("")  # 使用系统默认浏览器
            }
        } else if (Sys.info()["sysname"] == "Darwin") {
            # macOS: 使用 'open' 命令调用默认浏览器
            return("open")
        } else {
            # Linux/Unix: 使用 xdg-open
            return(Sys.which("xdg-open") %||% "default")
        }
    }

    # Rstudio初始化之后执行
    if (interactive()) {
        later::later(function() {
            options(browser = default_browser())
        }, delay = 0)
    }
})


cat('已加载:', path.expand("~/.Rprofile"), "\n")
cat('已加载:', file.path(getwd(), '.Rprofile'), '\n')

# # 1. 加载目标包
# library(shinymanager)
#
# # 2. 获取包中的所有函数
# package_name <- "shinymanager"  # 替换为你的包名
# package_env <- asNamespace(package_name)
# func_names <- ls(package_env)
#
# # 3. 过滤出函数（排除非函数对象）
# func_list <- Filter(function(x) is.function(get(x, envir = package_env)), func_names)
#
# # 4. 对所有函数开启 debug
# for (func in func_list) {
#     debug(get(func, envir = package_env))
# }
#
# # 5. 关闭调试（完成后运行）
# for (func in func_list) {
#     undebug(get(func, envir = package_env))
# }

