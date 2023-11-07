# Simplify

Simplifies the type signature of a type.

To import and use `Simplify` from the "Types" module:

```ts
import * as Types from 'effect/Types'

// Can be accessed like this
Types.Simplify
```

**Example**

```ts
import * as Types from 'effect/Types'

type Res = Types.Simplify<{ a: number } & { b: number }> // { a: number; b: number; }
```
