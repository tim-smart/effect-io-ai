# appendRestElement

Adds a rest element to the end of a tuple, or throws an exception if the rest element is already present.

To import and use `appendRestElement` from the "AST" module:

```ts
import * as AST from '@effect/schema/AST'

// Can be accessed like this
AST.appendRestElement
```

**Signature**

```ts
export declare const appendRestElement: (ast: Tuple, restElement: AST) => Tuple
```
