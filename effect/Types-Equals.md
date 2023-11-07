# Equals

Determines if two types are equal.

To import and use `Equals` from the "Types" module:

```ts
import * as Types from 'effect/Types'

// Can be accessed like this
Types.Equals
```

**Example**

```ts
import * as Types from 'effect/Types'

type Res1 = Types.Equals<{ a: number }, { a: number }> // true
type Res2 = Types.Equals<{ a: number }, { b: number }> // false
```
