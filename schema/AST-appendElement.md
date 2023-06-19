# appendElement

Appends an element to a tuple or throws an exception in the following cases:

- A required element cannot follow an optional element. ts(1257)
- An optional element cannot follow a rest element. ts(1266)

Part of the `AST` module, imported from `@effect/schema/AST`.

**Signature**

```ts
export declare const appendElement: (ast: Tuple, newElement: Element) => Tuple
```
