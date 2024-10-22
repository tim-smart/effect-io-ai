# annotations

Merges a set of new annotations with existing ones, potentially overwriting
any duplicates.

To import and use `annotations` from the "SchemaAST" module:

```ts
import * as SchemaAST from "effect/SchemaAST"
// Can be accessed like this
SchemaAST.annotations
```

**Signature**

```ts
export declare const annotations: (ast: AST, annotations: Annotations) => AST
```
