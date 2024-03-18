# omit

Equivalent at runtime to the built-in TypeScript utility type `Omit`.

To import and use `omit` from the "AST" module:

```ts
import * as AST from "@effect/schema/AST"
// Can be accessed like this
AST.omit
```

**Signature**

```ts
export declare const omit: (ast: AST, keys: ReadonlyArray<PropertyKey>) => TypeLiteral | Transformation
```
