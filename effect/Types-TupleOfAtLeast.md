# TupleOfAtLeast

Represents a tuple with at least `N` elements of type `T`.

This type constructs a tuple that has a fixed number of elements `N` of type `T` at the start,
followed by any number (including zero) of additional elements of the same type `T`.

To import and use `TupleOfAtLeast` from the "Types" module:

```ts
import * as Types from "effect/Types"
// Can be accessed like this
Types.TupleOfAtLeast
```

**Example**

```ts
import { TupleOfAtLeast } from "effect/Types"

// A tuple with at least 3 numbers
const example1: TupleOfAtLeast<3, number> = [1, 2, 3] // valid
const example2: TupleOfAtLeast<3, number> = [1, 2, 3, 4, 5] // valid
// @ts-expect-error
const example3: TupleOfAtLeast<3, number> = [1, 2] // invalid
```
