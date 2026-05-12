# jit-bachelor-thesis-latex

LaTeX Template for bachelor thesis of Jinling Institute of Technology, China. 

金陵科技学院本科毕业论文（设计） LaTeX模版，基于东南大学模版修改。

## Mannual
1. 各选项请参考`SuikaXhq/seu-bachelor-thesis-2022`的使用手册。
2. 或者自行翻阅`jitthesis-2026.cls`文件
3. 使用XeLaTeX编译。

## Fork from `SuikaXhq/seu-bachelor-thesis-2022`
```
%% [Original version for SEU] Copyright (C) 2022 Haoqing Xu
%% School of Artificial Intelligence, Southeast University.
%% [Modified version for JIT] Copyright (C) 2020-2027 Haixin Zhang
%% School of Information S&E, Southeast University.
```

## PS
给我亲爱的好朋友用，这样就免去排版之苦了。

能帮我点个免费的star吗？

## Updates
### v1.1
1. 去除TOC(目录)引用自身。
2. Defined a new command `\kaiti`, compatible with default CJK command `\songti`(for normal text), `\heiti`(for bold) and `\fangsong`.
3. 添加至四种page样式(style)（控制页眉页脚）：`plain`, `front`, `main`, `append`.
4. 添加若干命令cmd（控制页码、控制style）：
   ```
   \frontmatter命令：罗马页码 + 无编号 + front版页码(pure text)。
   \mainmatter命令：阿拉伯页码 + 章节编号 + main页眉(123 text)。
   \lastmatter命令：继续阿拉伯页码 + 无章节编号 + front版页眉(pure text)。
   \appendixmatter命令：继续阿拉伯页码 + 章节编号 + append版页眉(ABC text)。
   ```
5. 图片和表格的字体已经更改为黑体小五。
### v1.2
1. Change fig `3-1` to `3.1`.
2. Change `\cite` color to red.

## TODO
1. 【待解决】目录两个字下面需要留白。

## Acknowledgements
Home Page of the Original Project: `https://github.com/SuikaXhq/seu-bachelor-thesis-2022`

I applied their template to my bechelor thesis in 2024, awesome.
