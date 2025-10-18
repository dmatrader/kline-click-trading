# K线一键下单演示 / K-line Click Trading Demo

> 创新的K线下单方式：通过模式切换实现一键完成复杂下单操作 | Innovative K-line trading: Complete complex orders with one click through mode switching

## 💡 核心创新 / Core Innovation

### 🎯 设计理念突破

**市场现状**: 目前市面上的K线交易工具通常只支持单一的下单逻辑：
- 要么只支持简单的限价单
- 要么只支持一种条件单模式
- 缺乏灵活的模式切换机制

**本项目创新**: 
通过"三种下单模式动态切换"设计，在同一K线图界面通过模式按钮切换，即可完成普通挂单、条件单、追踪止损三种订单类型。提升下单效率，适合快速决策的日内交易场景。

### 📋 原创声明 / Originality Statement

**设计时间**: 2025年3月  
**首次公开**: 2025年10月（本GitHub仓库）  
**设计者**: dmatrader

经调研，现有主流K线交易工具均未发现"多模式动态切换"的设计方案。本项目采用CC BY-NC 4.0许可证，代码和设计受著作权保护，GitHub commit时间戳可作为公开发布的原创证明。

### 🎯 三种下单模式 / Three Order Modes

1. **普通模式** - 直接挂单或市价成交
2. **条件单模式** - 设置价格偏移百分比，价格到达触发
3. **追踪止损模式** - 设置回撤百分比，跟踪价格变化

## 📖 项目介绍 / Project Description

**中文**: 本项目为作者专业交易软件中的功能模块演示。通过三种下单模式（普通/条件单/追踪止损）的快速切换，交易员在K线图上点击一次即可完成原本需要多步操作的复杂订单。完整软件包含更多交易功能模块。

**English**: This is a functional module demo from the author's professional trading software. By quickly switching between three order modes (Normal/Conditional/Trailing Stop), traders can complete complex order operations with a single click on the K-line chart that would normally require multiple steps. 

**Key Innovation**: Unlike traditional trading tools that only support a single order type or require switching between different interfaces, this tool allows traders to seamlessly switch between three order modes (Normal Limit/Conditional Stop/Trailing Stop) within the same K-line interface, dramatically improving trading efficiency and response time. The full software includes additional advanced trading modules.

## 🚀 快速体验 / Quick Experience

**[在线演示 / Live Demo](https://dmatrader.github.io/kline-click-trading/)**

**本地运行**: 直接用浏览器打开 `index.html` 文件即可体验

## ✨ 功能特性 / Features

- 📊 **实时K线数据** - WebSocket实时更新K线图，价格变动即时响应
- 🌐 **多交易所支持** - 支持币安/OKX/Bitget，国内外用户均可使用
- 🔄 **三种下单模式** - 普通/条件单/追踪止损，一键切换
- 🖱️ **左右键下单** - 左键=买入，右键=卖出，直观高效
- 📈 **K线图可视化** - 挂单显示虚线，持仓显示实线，一目了然
- 🖱️ **拖动改单** - 直接在K线图上拖动价格线标签即可修改挂单价格
- 💼 **仓位管理** - 实时显示持仓盈亏，支持一键平仓
- 🗑️ **挂单管理** - 显示挂单状态，等待中的订单可随时撤销
- ✅ **模拟成交** - 自动检测价格触发条件，模拟订单成交和持仓
- 📝 **操作日志** - 详细记录每笔操作和成交信息

## 📖 使用说明 / Usage Guide

### 核心操作方式 / Core Operations
**创新交互设计 / Innovative Interaction**：
- 🖱️ **Left Click = Buy** (左键点击 = 买入)
- 🖱️ **Right Click = Sell** (右键点击 = 卖出)

### 下单模式详解 / Order Modes Explained

#### 1. **普通模式 / Normal Mode** (默认 / Default)
**中文**：
- 左键点击 = 买入挂单 | 右键点击 = 卖出挂单
- 点击价格接近当前价 = 直接市价成交

**English**：
- Left click = Buy limit order | Right click = Sell limit order
- Clicking near current price = Instant market execution
- Simple and straightforward for quick entries

#### 2. **条件单模式 / Conditional Order Mode** (蓝色按钮 / Blue Button)
**中文**：
- 智能判断：点击价格与当前价对比，自动选择限价单或条件单
- **买入**：点击价 < 当前价 = 限价挂单 | 点击价 > 当前价 = 条件单（突破买入）
- **卖出**：点击价 > 当前价 = 限价挂单 | 点击价 < 当前价 = 条件单（跌破卖出）
- 条件单可设置价格偏移百分比（Offset %），触发后以偏移价成交

**English**：
- **Intelligent Detection**: Automatically determines limit order or stop order based on click price vs current price
- **Buy Orders**:
  - Click price < Current price = Limit Buy Order (wait for price to drop)
  - Click price > Current price = Stop Buy Order (breakout entry with offset)
- **Sell Orders**:
  - Click price > Current price = Limit Sell Order (wait for price to rise)
  - Click price < Current price = Stop Sell Order (breakdown entry with offset)
- **Offset Parameter**: Sets the execution price offset percentage from trigger price
  - Example: Trigger at $50,000, Offset 0.5% → Execute at $50,250 (for buy) or $49,750 (for sell)

#### 3. **追踪止损模式 / Trailing Stop Mode** (紫色按钮 / Purple Button)
**中文**：
- 设置回撤百分比（0.5%-10%）
- **买入追踪**：等待价格跌到激活价后，追踪最低价，价格回升达到回撤百分比时买入
- **卖出追踪**：等待价格涨到激活价后，追踪最高价，价格回落达到回撤百分比时卖出
- K线图标签显示激活状态：[追踪✓] = 已激活 | [追踪○] = 等待激活

**English**：
- **Set Callback Rate** (0.5%-10%): The percentage pullback required to trigger
- **Buy Trailing Stop**:
  - Step 1: Wait for price to drop to activation price
  - Step 2: Track lowest price reached
  - Step 3: Execute buy when price rises by callback percentage from lowest
  - Example: Activation $50,000, Callback 1% → If price drops to $49,000 then rises to $49,490 → Buy executed
- **Sell Trailing Stop**:
  - Step 1: Wait for price to rise to activation price
  - Step 2: Track highest price reached
  - Step 3: Execute sell when price falls by callback percentage from highest
  - Example: Activation $51,000, Callback 1% → If price rises to $52,000 then falls to $51,480 → Sell executed
- **Status Indicator**: [Trailing✓] = Activated | [Trailing○] = Waiting for activation

### 操作步骤 / Operation Steps
1. **选择交易所 / Select Exchange**: 币安/OKX/Bitget (国内推荐OKX或Bitget / Domestic users recommended OKX/Bitget)
2. **设置金额 / Set Amount**: 点击金额按钮或点击⚙️自定义 / Click amount button or ⚙️ to customize
3. **切换模式 / Switch Mode**: 点击顶部模式按钮 / Click mode button in header
4. **设置参数 / Set Parameters**: 根据模式设置Offset或回撤百分比 / Set Offset % or Callback % based on mode
5. **点击下单 / Click to Order**: 在K线图上点击目标价格（左键=买，右键=卖）/ Click target price on chart
6. **拖动改单 / Drag to Modify**: 拖动价格线标签修改挂单价格 / Drag price line label to modify order price
7. **操作订单 / Manage Orders**: 点击标签上的"撤单"或"平仓"按钮 / Click "Cancel" or "Close" button on labels
8. **等待成交 / Wait Execution**: 查看挂单和持仓列表 / Monitor orders and positions lists

## 🎨 界面说明 / Interface Guide

**中文**：
- **顶部工具栏**: 交易所选择、模式切换按钮和参数设置
- **金额按钮**: 4个快选金额（默认10/100/500/1000U），点击⚙️可自定义，配置自动保存
- **左侧持仓列表**: 显示当前持仓，实时更新盈亏，点击平仓按钮即可平仓
- **左侧挂单列表**: 显示所有待触发和已成交的订单，点击撤单按钮即可撤销
- **左侧操作日志**: 记录所有操作和系统消息
- **右侧K线图**: 实时更新，点击任意位置下单
  - **虚线**: 挂单价格线（绿色=买单，红色=卖单）- 可拖动修改价格
  - **实线**: 持仓均价线（青色=多头，橙色=空头）
  - **价格线标签**: 左侧显示，显示订单类型（[条件]/[追踪✓]/[追踪○]）、价格、操作按钮
  - **拖动改单**: 挂单标签可拖动，不同模式自动应用相应逻辑

**English**:
- **Top Toolbar**: Exchange selector, mode switching button, and parameter settings
- **Amount Buttons**: 4 quick-select amounts (default 10/100/500/1000U), click ⚙️ to customize, config auto-saved to browser
- **Left Sidebar - Positions Panel**: 
  - Displays current positions with real-time P&L calculation
  - Click "Close" button to exit position immediately
  - Shows entry price and position quantity in BTC
- **Left Sidebar - Orders Panel**: 
  - Shows all pending, filled, and cancelled orders
  - Displays order type ([Conditional] for stop orders, [Trailing✓] for activated, [Trailing○] for pending)
  - Click "Cancel" button to remove pending orders
  - Shows trigger price and execution price for conditional orders
- **Left Sidebar - Logs Panel**: Records all operations and system messages with timestamps
- **Right Side - K-line Chart**: 
  - Real-time WebSocket updates (Binance/OKX) or 3s polling (Bitget)
  - Click anywhere to place orders (Left=Buy, Right=Sell)
  - **Dashed Lines**: Pending orders (Green=Buy orders, Red=Sell orders) - draggable
  - **Solid Lines**: Position entry prices (Cyan=Long positions, Orange=Short positions)
  - **Price Line Labels** (Left side):
    - Shows order/position type, price, and action buttons
    - Draggable for pending orders to modify price
    - Different modes apply different modification logic
    - Click buttons directly on chart to cancel orders or close positions
- **Current Price Display**: Top-right corner shows real-time BTC/USDT price

## 🛠️ 技术栈 / Tech Stack

- **LightweightCharts** - 高性能K线图库
- **Binance API** - 实时K线数据
- **纯HTML/CSS/JS** - 无需服务器，浏览器直接运行

## 📊 数据来源 / Data Source

- **支持交易所**: 币安(Binance) / OKX / Bitget
- **K线数据**: BTC/USDT 1分钟K线（最近500根）
- **实时更新**: WebSocket实时推送（币安/OKX）或3秒轮询（Bitget）
- **国内访问**: 推荐使用OKX或Bitget，币安API在国内可能受限

## 💡 使用场景 / Use Cases

1. **快速止损**: 追踪止损模式，自动跟踪价格保护利润
2. **突破交易**: 条件单模式，突破关键价位自动入场
3. **挂单交易**: 普通模式，在支撑/阻力位提前挂单
4. **日内交易**: 快速切换模式，应对不同市场情况

## 🔔 关注我们 / Follow Us

### 📢 币安合约异动告警群
**实时监控币安全部合约异动，可定制币对范围和涨跌幅提醒阈值**

- **Telegram频道**: 
- **功能**: 7年稳定返佣渠道，机器人可定制提醒
- **邀请码**: 
  - 币安: `MAPAMBQ1` (手续费永久返还)
  - OKX: `TRADER8` (手续费永久返还)
  - Bitget: `TRADER8` (手续费永久返还)

## 🔗 相关链接 / Related Links

- [币安注册邀请](https://www.binance.com/join?ref=MAPAMBQ1) - 手续费永久返还
- [OKX注册交易](https://www.okx.com/join/TRADER8) - 手续费永久返还
- [Bitget注册交易](https://www.bitget.com/zh-CN/referral/register?clacCode=TRADER8) - 手续费永久返还

## 📸 预览 / Preview

![K线一键下单界面](https://github.com/dmatrader/kline-click-trading/blob/master/screenshot.png)

## 📁 项目结构 / Project Structure

```
git-kline-click-trading/
├── index.html              # 主文件（完整功能）
├── README.md               # 项目说明
└── screenshot.png          # 项目截图
```

## 🚀 快速开始 / Quick Start

**在线体验**: [https://dmatrader.github.io/kline-click-trading/](https://dmatrader.github.io/kline-click-trading/)

**本地运行**: [下载index.html](https://github.com/dmatrader/kline-click-trading/blob/master/index.html) 后用浏览器直接打开即可

## ⚠️ 免责声明 / Disclaimer

- 本工具为演示版本，仅用于技术展示和学习目的
- 所有订单和成交都是模拟的，不涉及真实资金
- 不构成任何投资建议
- 交易有风险，投资需谨慎

## 📄 许可证 / License

Creative Commons BY-NC 4.0 - 允许个人使用，禁止商业用途 | Personal use allowed, commercial use prohibited

---

⭐ **如果觉得这个项目有帮助，请给个星标！**  
⭐ **If you find this project helpful, please give it a star!**
