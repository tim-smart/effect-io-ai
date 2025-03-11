## reAnnotate

Change the annotation of a `DocTree`.

**Signature**

```ts
declare const reAnnotate: { <A, B>(f: (a: A) => B): (self: DocTree<A>) => DocTree<B>; <A, B>(self: DocTree<A>, f: (a: A) => B): DocTree<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocTree.ts#L262)

Since v1.0.0