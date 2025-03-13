Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.cat

The `cat` combinator lays out two documents separated by nothing.

**Signature**

```ts
declare const cat: { <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>; <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L867)

Since v1.0.0