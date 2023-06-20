# pick

Equivalent at runtime to the built-in TypeScript utility type `Pick`.

To import and use `pick` from the "AST" module:

```ts
import * as AST from '@effect/schema/AST'

// Can be accessed like this
AST.pick
```

**Signature**

```ts
export declare const pick: (ast: AST, keys: ReadonlyArray<PropertyKey>) => TypeLiteral
```
