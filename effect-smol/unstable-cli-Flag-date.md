Package: `effect`<br />
Module: `Flag`<br />

## Flag.date

Creates a date flag that accepts date input in ISO format.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const startDateFlag = Flag.date("start-date")
// Usage: --start-date 2023-12-25
```

**Signature**

```ts
declare const date: (name: string) => Flag<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L110)

Since v4.0.0