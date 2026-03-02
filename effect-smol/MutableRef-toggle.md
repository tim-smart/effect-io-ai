Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.toggle

Toggles a boolean MutableRef (true becomes false, false becomes true) and returns the reference.

**Example**

```ts
import { MutableRef } from "effect"

const flag = MutableRef.make(false)

// Toggle the flag
MutableRef.toggle(flag)
console.log(MutableRef.get(flag)) // true

// Toggle again
MutableRef.toggle(flag)
console.log(MutableRef.get(flag)) // false

// Useful for state switches
const isVisible = MutableRef.make(true)
MutableRef.toggle(isVisible) // Hide
console.log(MutableRef.get(isVisible)) // false

// Toggle button implementation
const darkMode = MutableRef.make(false)
const toggleDarkMode = () => {
  MutableRef.toggle(darkMode)
  console.log(`Dark mode: ${MutableRef.get(darkMode) ? "ON" : "OFF"}`)
}

toggleDarkMode() // "Dark mode: ON"
toggleDarkMode() // "Dark mode: OFF"

// Returns the reference for chaining
const result = MutableRef.toggle(flag)
console.log(result === flag) // true
```

**Signature**

```ts
declare const toggle: (self: MutableRef<boolean>) => MutableRef<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L737)

Since v2.0.0