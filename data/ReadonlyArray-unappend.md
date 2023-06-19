# unappend

Return a tuple containing a copy of the `NonEmptyReadonlyArray` without its last element, and that last element.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const unappend: <A>(self: readonly [A, ...A[]]) => [A[], A]
```
