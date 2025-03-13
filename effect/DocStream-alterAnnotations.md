Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.alterAnnotations

Changes the annotation of a document to a different annotation, or to
none at all.

**Signature**

```ts
declare const alterAnnotations: { <A, B>(f: (a: A) => Option<B>): (self: DocStream<A>) => DocStream<B>; <A, B>(self: DocStream<A>, f: (a: A) => Option<B>): DocStream<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L302)

Since v1.0.0