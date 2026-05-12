Package: `effect`<br />
Module: `Config`<br />

## Config.isConfig

Returns `true` if `u` is a `Config` instance.

When to use:
- Runtime type-checking before calling `.parse()` on an unknown value.
- Distinguishing a `Config` from a plain value inside `unwrap`.

**Example** (Type guard)

```ts
import { Config } from "effect"

console.log(Config.isConfig(Config.string("HOST"))) // true
console.log(Config.isConfig("not a config"))        // false
```

**Signature**

```ts
declare const isConfig: (u: unknown) => u is Config<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L110)

Since v4.0.0