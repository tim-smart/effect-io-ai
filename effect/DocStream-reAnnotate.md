## reAnnotate

Modify the annotations of a document.

**Signature**

```ts
declare const reAnnotate: { <A, B>(f: (a: A) => B): (self: DocStream<A>) => DocStream<B>; <A, B>(self: DocStream<A>, f: (a: A) => B): DocStream<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L313)

Since v1.0.0