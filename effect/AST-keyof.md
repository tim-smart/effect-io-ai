# keyof

Equivalent at runtime to the TypeScript type-level `keyof` operator.

To import and use `keyof` from the "AST" module:

```ts
import * as AST from "@effect/schema/AST"
// Can be accessed like this
AST.keyof
```

**Signature**

```ts
export declare const keyof: (ast: AST) => AST
```
