# partial

Equivalent at runtime to the built-in TypeScript utility type `Partial`.

To import and use `partial` from the "SchemaAST" module:

ts
import \* as SchemaAST from "effect/SchemaAST"
// Can be accessed like this
SchemaAST.partial
undefined

**Signature**

```ts
export declare const partial: (ast: AST, options?: { readonly exact: true }) => AST
```
