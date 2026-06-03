---
name: markitdown
description: Convert any file to Markdown using Microsoft's MarkItDown. Supports PDF, Word, PowerPoint, Excel, images (OCR), audio (transcription), HTML, CSV, JSON, XML, ZIP, EPUB, YouTube URLs, and more. Use when user needs to extract text from documents for LLM processing.
---

# MarkItDown — 任意文件转 Markdown

使用 Microsoft MarkItDown (`markitdown` CLI) 将任意文件转换为 Markdown 格式。

**已安装**: v0.1.6, 支持 `[all]` extras（含 OCR、语音转录等）

## 支持格式

| 格式 | 能力 |
|------|------|
| PDF | 文本提取 |
| Word (.docx) | 保留标题、列表、表格 |
| PowerPoint (.pptx) | 提取文本内容 |
| Excel (.xlsx/.csv) | 表格转 Markdown |
| 图片 | EXIF 元数据 + OCR 文字识别 |
| 音频 | EXIF 元数据 + 语音转录 |
| HTML | 网页转 Markdown |
| ZIP | 遍历压缩包内文件 |
| EPUB | 电子书格式 |
| YouTube | 字幕提取 |
| JSON/XML/CSV | 结构化数据转 Markdown |

## 基本用法

```bash
# 转换文件
markitdown input.pdf -o output.md

# 从 stdin 读取
cat input.pdf | markitdown

# 直接输出（不保存文件）
markitdown document.docx
```

## 常用场景

1. **提取文档内容给 LLM**: `markitdown report.pdf` → 将输出粘贴到对话中
2. **批量处理**: `for f in *.docx; do markitdown "$f" -o "${f%.docx}.md"; done`
3. **OCR 图片**: `markitdown scanned.png` （需安装 `markitdown[all]`）
4. **YouTube 转录**: `markitdown https://youtube.com/watch?v=...`

## 安全注意

- MarkItDown 以当前进程权限执行 I/O，处理不受信任的文件时注意隔离
- 在不受信任环境中使用 `convert_stream()` 或 `convert_local()` 等更窄的函数
