# annotations

Merges a set of new annotations with existing ones, potentially overwriting
any duplicates.

To import and use `annotations` from the "AST" module:

```ts
import * as AST from "@effect/schema/AST"
// Can be accessed like this
AST.annotations
```

**Signature**

```ts
export declare const annotations: (ast: AST, annotations: Annotations) => AST
```
