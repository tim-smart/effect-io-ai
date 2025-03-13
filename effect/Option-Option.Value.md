Package: `effect`<br />
Module: `Option`<br />

## Option.Option.Value

Extracts the type of the value contained in an `Option`.

**Example**

```ts
// Title: Getting the Value Type of an Option
import { Option } from "effect"

// Declare an Option holding a string
declare const myOption: Option.Option<string>

// Extract the type of the value within the Option
//
//      ┌─── string
//      ▼
type MyType = Option.Option.Value<typeof myOption>
```

**Signature**

```ts
type Value<T> = [T] extends [Option<infer _A>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L118)

Since v2.0.0