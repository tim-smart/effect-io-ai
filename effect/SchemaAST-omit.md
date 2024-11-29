# omit

Equivalent at runtime to the built-in TypeScript utility type `Omit`.

To import and use `omit` from the "SchemaAST" module:

ts
import \* as SchemaAST from "effect/SchemaAST"
// Can be accessed like this
SchemaAST.omit
undefined

**Signature**

```ts
export declare const omit: (ast: AST, keys: ReadonlyArray<PropertyKey>) => TypeLiteral | Transformation
```
