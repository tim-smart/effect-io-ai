Package: `effect`<br />
Module: `Stream`<br />

## Stream.some

Converts an option on values into an option on errors.

**Signature**

```ts
declare const some: <A, E, R>(self: Stream<Option.Option<A>, E, R>) => Stream<A, Option.Option<E>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4683)

Since v2.0.0