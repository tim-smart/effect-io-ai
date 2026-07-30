Package: `@effect/printer`<br />
Module: `DocTree`<br />

## DocTree.annotation

Annotate the specified `DocTree` with an annotation of type `A`.

**Signature**

```ts
declare const annotation: { <A>(annotation: A): <B>(self: DocTree<B>) => DocTree<A | B>; <A, B>(self: DocTree<A>, annotation: B): DocTree<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocTree.ts#L227)

Since v1.0.0