Package: `@effect/printer`<br />
Module: `DocTree`<br />

## DocTree.alterAnnotations

Change the annotation of a document to a different annotation, or none at
all.

**Signature**

```ts
declare const alterAnnotations: { <A, B>(f: (a: A) => Iterable<B>): (self: DocTree<A>) => DocTree<B>; <A, B>(self: DocTree<A>, f: (a: A) => Iterable<B>): DocTree<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocTree.ts#L251)

Since v1.0.0