# zmk-config-adept

ZMK config for 3-pin modded Ploopy Adept BLE

Features: ZMK Studio | Scroll layer | Cursor acceleration | 125Hz report rate

---

**[English](#english) | [中文](#中文)**

---

## English

### Physical Layout

6 buttons in two rows:

```
 [0]  [1]  [2]  [3]      ← Upper side buttons (0 & 3 slightly lower than 1 & 2)
 [4]            [5]      ← Lower main buttons (left click, right click)
```

Trackball sits in the center area.

### Layer 0: Mouse Layer (Default)

Trackball controls cursor with acceleration curve (0.8x ~ 3.0x).

| Key | Function | Note |
|-----|----------|------|
| 0 | Ctrl+PageUp | Previous browser tab |
| 1 | Mouse Back (MB4) | Browser back |
| 2 | Mouse Forward (MB5) | Browser forward |
| 3 | **Tap**: Ctrl+PageDown / **Hold**: Temp scroll layer | Next tab / Trackball becomes scroll wheel while held |
| 4 | Left Click (MB1) | — |
| 5 | Right Click (MB2) | — |

> Key 3 is a Layer-Tap: tap sends Ctrl+PageDown, hold temporarily activates scroll layer (returns on release).

### Layer 1: Scroll Layer

Trackball converts to scroll wheel (XY swap + Y invert + 1:16 scaling). Left/right click unchanged.

| Key | Function | Note |
|-----|----------|------|
| 0 | Play/Pause | Media control |
| 1 | Volume Down | Media control |
| 2 | Volume Up | Media control |
| 3 | Back to Mouse Layer | Permanently returns to Layer 0 |
| 4 | Left Click (MB1) | — |
| 5 | Right Click (MB2) | — |

**How to enter (two ways):**
- **Temporary**: Hold key 3 on Layer 0, auto-returns on release
- **Locked**: Press key 2 + key 3 simultaneously (combo) on Layer 0, press key 3 to return

### Layer 2 / 3: Reserved

Marked as `reserved`, no bindings. Configurable via ZMK Studio or keymap file.

### Layer 4: ZMK Studio Unlock

Only key 0 is bound to `studio_unlock`, others pass through. Used for ZMK Studio permission unlock.

### Combos

Press specified keys simultaneously to trigger. Works across layers without switching.

| Action | Key Combo | Layers | Note |
|--------|-----------|--------|------|
| Middle Click (MB3) | 4 + 5 | 0, 1 | Press left + right click together |
| Switch to Scroll Layer | 2 + 3 | 0 | Locked switch to Layer 1 |
| ESC | 0 + 1 | 0, 1 | — |
| Close Tab | 1 + 2 | 0, 1 | Ctrl+W |
| Switch App | 0 + 4 | 0, 1 | Alt+Tab |
| Close App | 0 + 3 | 0, 1 | Alt+F4 |
| Clear BLE Pairing | 0 + 1 + 2 + 3 | 0 | All 4 upper keys |
| Enter Bootloader | 0 + 3 + 4 + 5 | 0 | For firmware flashing |

### Quick Reference

- **Browser tabs**: Key 0 (prev) / Tap key 3 (next)
- **Browser nav**: Key 1 (back) / Key 2 (forward)
- **Scroll**: Hold key 3 + move trackball, or combo 2+3 to lock scroll mode
- **Middle click**: Press left + right (4+5) together
- **Media**: Enter scroll layer, key 0/1/2 = play-pause / vol down / vol up
- **BLE re-pair**: Hold all 4 upper keys
- **Flash firmware**: Combo 0+3+4+5 for bootloader, or double-tap hardware RESET

---

## 中文

### 物理布局

鼠标共 6 个按键，分上下两排：

```
 [0]  [1]  [2]  [3]      ← 上排侧键（0、3 略低于 1、2）
 [4]            [5]      ← 下排主键（左键、右键）
```

轨迹球位于按键中央区域。

### Layer 0：鼠标层（默认）

轨迹球控制光标移动，带加速曲线（0.8x ~ 3.0x）。

| 键位 | 功能 | 说明 |
|------|------|------|
| 0 | Ctrl+PageUp | 上一个浏览器标签页 |
| 1 | 鼠标后退 (MB4) | 浏览器后退 |
| 2 | 鼠标前进 (MB5) | 浏览器前进 |
| 3 | **点按**: Ctrl+PageDown / **长按**: 临时切换到滚动层 | 下一个标签页 / 按住时轨迹球变滚轮 |
| 4 | 左键 (MB1) | — |
| 5 | 右键 (MB2) | — |

> 键 3 是 Layer-Tap 行为：轻点发送 Ctrl+PageDown，按住不放则临时进入滚动层（松手自动回来）。

### Layer 1：滚动层

轨迹球转换为滚轮（XY 交换 + Y 反转 + 1:16 缩放），左右键保持不变。

| 键位 | 功能 | 说明 |
|------|------|------|
| 0 | 播放/暂停 | 媒体控制 |
| 1 | 音量减 | 媒体控制 |
| 2 | 音量加 | 媒体控制 |
| 3 | 切回鼠标层 | 永久切回 Layer 0 |
| 4 | 左键 (MB1) | — |
| 5 | 右键 (MB2) | — |

**进入方式（二选一）：**
- **临时切换**：在 Layer 0 长按键 3，松手自动回 Layer 0
- **锁定切换**：在 Layer 0 同时按键 2 + 键 3（组合键），按键 3 切回

### Layer 2 / 3：预留层

当前标记为 `reserved`，无绑定。可通过 ZMK Studio 或修改 keymap 文件配置。

### Layer 4：ZMK Studio 解锁层

仅键 0 绑定 `studio_unlock`，其余透传。用于 ZMK Studio 在线配置时的权限解锁。

### 组合键

同时按下指定键位触发，无需切层。

| 操作 | 按键组合 | 可用层 | 说明 |
|------|----------|--------|------|
| 中键 (MB3) | 4 + 5 | 0, 1 | 同时按左右键 |
| 切换到滚动层 | 2 + 3 | 0 | 锁定进入 Layer 1 |
| ESC | 0 + 1 | 0, 1 | — |
| 关闭标签页 | 1 + 2 | 0, 1 | Ctrl+W |
| 切换应用 | 0 + 4 | 0, 1 | Alt+Tab |
| 关闭应用 | 0 + 3 | 0, 1 | Alt+F4 |
| 清除蓝牙配对 | 0 + 1 + 2 + 3 | 0 | 上排四键全按 |
| 进入 Bootloader | 0 + 3 + 4 + 5 | 0 | 用于刷固件 |

### 日常使用速查

- **浏览器标签页切换**：键 0（上一页）/ 点按键 3（下一页）
- **浏览器前进后退**：键 1（后退）/ 键 2（前进）
- **滚动网页**：长按键 3 + 滚轨迹球，或按组合键 2+3 锁定滚动模式
- **中键点击**：同时按左右键（4+5）
- **媒体控制**：进入滚动层后，键 0/1/2 分别为播放暂停/音量减/音量加
- **蓝牙重新配对**：上排四键同时按住
- **刷固件**：同时按键 0+3+4+5 进入 Bootloader，或双击硬件 RESET 按钮
