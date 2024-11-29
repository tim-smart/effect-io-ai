# keyof

Equivalent at runtime to the TypeScript type-level `keyof` operator.

To import and use `keyof` from the "SchemaAST" module:

ts
import \* as SchemaAST from "effect/SchemaAST"
// Can be accessed like this
SchemaAST.keyof
undefined

**Signature**

```ts
export declare const keyof: (ast: AST) => AST
```
