# pick

Equivalent at runtime to the built-in TypeScript utility type `Pick`.

To import and use `pick` from the "SchemaAST" module:

ts
import \* as SchemaAST from "effect/SchemaAST"
// Can be accessed like this
SchemaAST.pick
undefined

**Signature**

```ts
export declare const pick: (ast: AST, keys: ReadonlyArray<PropertyKey>) => TypeLiteral | Transformation
```
