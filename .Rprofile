# 在R脚本或控制台中执行
options(shiny.launch.browser = FALSE)

if (interactive()) {
    # 包不存在时发出警告，且允许后续代码执行
    suppressMessages(require(devtools))
    suppressMessages(require(purrr)) # 函数式编程
}

cat('已加载加载:', path.expand("~/.Rprofile"), "\n")

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

# warn on partial matches
options(
    warnPartialMatchAttr = TRUE,
    warnPartialMatchDollar = TRUE,
    warnPartialMatchArgs = TRUE
)

# 在windows系统中由浏览器打开帮助文档
# options(browser = 'C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe')
