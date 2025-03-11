## TupleOf

Represents a tuple with a fixed number of elements of type `T`.

This type constructs a tuple that has exactly `N` elements of type `T`.

**Example**

```ts
import { TupleOf } from "effect/Types"

// A tuple with exactly 3 numbers
const example1: TupleOf<3, number> = [1, 2, 3]; // valid
// @ts-expect-error
const example2: TupleOf<3, number> = [1, 2]; // invalid
// @ts-expect-error
const example3: TupleOf<3, number> = [1, 2, 3, 4]; // invalid
```

**Signature**

```ts
type TupleOf<N, T> = N extends N ? number extends N ? Array<T> : _TupleOf<T, N, []> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L32)

Since v3.3.0