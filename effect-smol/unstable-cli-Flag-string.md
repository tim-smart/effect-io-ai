Package: `effect`<br />
Module: `Flag`<br />

## Flag.string

Creates a string flag that accepts text input.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const nameFlag = Flag.string("name")
// Usage: --name "John Doe"
```

**Signature**

```ts
declare const string: (name: string) => Flag<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L45)

Since v4.0.0