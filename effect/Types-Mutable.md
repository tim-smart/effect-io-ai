Package: `effect`<br />
Module: `Types`<br />

## Types.Mutable

Make all properties in `T` mutable. Supports arrays, tuples, and records as well.

**Example**

```ts
import type { Types } from "effect"

type MutableStruct = Types.Mutable<{ readonly a: string; readonly b: number }> // { a: string; b: number; }

type MutableArray = Types.Mutable<ReadonlyArray<string>> // string[]

type MutableTuple = Types.Mutable<readonly [string, number]> // [string, number]

type MutableRecord = Types.Mutable<{ readonly [_: string]: number }> // { [x: string]: number; }
```

**Signature**

```ts
type Mutable<T> = {
  -readonly [P in keyof T]: T[P]
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L241)

Since v2.0.0