# 《哥德尔，埃舍尔和巴赫—集异璧之大成》Typst 重排工程

本书工程致力于将道格拉斯·侯世达（Douglas Hofstadter）的经典著作《哥德尔，埃舍尔和巴赫—集异璧之大成》（商务印书馆 1996 年中译本）全书 1,089 个源页 1:1 转换为结构优雅、排印精湛、可检索、可编辑的 Typst 富文本工程。

---

## 1. 工程结构

- `chapters/`: 逐页源码 `p0001.typ` 至 `p1089.typ`
- `assets/`: 每页裁切的高清插图、版画、示意图与图表
- `theme.typ`: 全局统一排版系统（包含字体、尺寸、版心、页眉页脚、标题、对话环境、MIU/TNT 逻辑盒等）
- `footers.typ`: 全局页脚驱动表与页码映射
- `main.typ`: 全书主入口，通过 `<source-page>` 维持严格页码映射
- `TYPST-GUIDE.md`: 页面编写规范与语义宏使用手册
- `work/`: 源图索引、量测数据、流水线报告与质检缓存

---

## 2. 编译与验证

```bash
# 全书单页溢出与恰好一页验证
python3 tools/transcribe_geb.py verify --pages all --workers 4

# 全书编译与严格 1,089 页验证
python3 tools/transcribe_geb.py build

# 视觉对比与 CodeBuddy (glm-5.3-flash) 盲审
python3 tools/transcribe_geb.py audit --pages 1-10
```
