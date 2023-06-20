# setAnnotation

Adds an annotation, potentially overwriting the existing annotation with the specified id.

To import and use `setAnnotation` from the "AST" module:

```ts
import * as AST from '@effect/schema/AST'

// Can be accessed like this
AST.setAnnotation
```

**Signature**

```ts
export declare const setAnnotation: (ast: AST, id: PropertyKey, value: unknown) => AST
```
