Package: `effect`<br />
Module: `Option`<br />

## Option.Option.Value

Extracts the type of the value contained in an `Option`.

**Example** (Extracting the value type)

```ts
import type { Option } from "effect"

declare const myOption: Option.Option<string>

//      ┌─── string
//      ▼
type MyType = Option.Option.Value<typeof myOption>
```

**Signature**

```ts
type Value<T> = [T] extends [Option<infer _A>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L251)

Since v2.0.0