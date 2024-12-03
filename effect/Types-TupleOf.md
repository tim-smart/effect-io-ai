# TupleOf

Represents a tuple with a fixed number of elements of type `T`.

This type constructs a tuple that has exactly `N` elements of type `T`.

To import and use `TupleOf` from the "Types" module:

```ts
import * as Types from "effect/Types"
// Can be accessed like this
Types.TupleOf
```

**Example**

```ts
import { TupleOf } from "effect/Types"

// A tuple with exactly 3 numbers
const example1: TupleOf<3, number> = [1, 2, 3] // valid
// @ts-expect-error
const example2: TupleOf<3, number> = [1, 2] // invalid
// @ts-expect-error
const example3: TupleOf<3, number> = [1, 2, 3, 4] // invalid
```
