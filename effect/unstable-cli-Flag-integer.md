Package: `effect`<br />
Module: `Flag`<br />

## Flag.integer

Creates an integer flag that accepts whole number input.

**Example** (Creating integer flags)

```ts
import { Flag } from "effect/unstable/cli"

const portFlag = Flag.integer("port")
// Usage: --port 8080
```

**Signature**

```ts
declare const integer: (name: string) => Flag<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Flag.ts#L90)

Since v4.0.0