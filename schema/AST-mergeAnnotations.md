# mergeAnnotations

Adds a group of annotations, potentially overwriting existing annotations.

To import and use `mergeAnnotations` from the "AST" module:

```ts
import * as AST from '@effect/schema/AST'

// Can be accessed like this
AST.mergeAnnotations
```

**Signature**

```ts
export declare const mergeAnnotations: (ast: AST, annotations: Annotated['annotations']) => AST
```
