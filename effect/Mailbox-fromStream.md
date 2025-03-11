## fromStream

Create a `ReadonlyMailbox` from a `Stream`.

**Signature**

```ts
declare const fromStream: { (options?: { readonly capacity?: number | undefined; readonly strategy?: "suspend" | "dropping" | "sliding" | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect<ReadonlyMailbox<A, E>, never, R | Scope>; <A, E, R>(self: Stream<A, E, R>, options?: { readonly capacity?: number | undefined; readonly strategy?: "suspend" | "dropping" | "sliding" | undefined; }): Effect<ReadonlyMailbox<A, E>, never, R | Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Mailbox.ts#L254)

Since v3.11.0