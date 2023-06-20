# appendElement

Appends an element to a tuple or throws an exception in the following cases:

- A required element cannot follow an optional element. ts(1257)
- An optional element cannot follow a rest element. ts(1266)

To import and use `appendElement` from the "AST" module:

```ts
import * as AST from '@effect/schema/AST'

// Can be accessed like this
AST.appendElement
```

**Signature**

```ts
export declare const appendElement: (ast: Tuple, newElement: Element) => Tuple
```
