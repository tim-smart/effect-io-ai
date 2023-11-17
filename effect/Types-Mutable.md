# Mutable

Make all properties in `T` mutable. Supports arrays, tuples, and records as well.

To import and use `Mutable` from the "Types" module:

```ts
import * as Types from "effect/Types"
// Can be accessed like this
Types.Mutable
```

**Example**

```ts
import type * as Types from "effect/Types"

type MutableStruct = Types.Mutable<{ readonly a: string; readonly b: number }> // { a: string; b: number; }

type MutableArray = Types.Mutable<ReadonlyArray<string>> // string[]

type MutableTuple = Types.Mutable<readonly [string, number]> // [string, number]

type MutableRecord = Types.Mutable<{ readonly [_: string]: number }> // { [x: string]: number; }
```
