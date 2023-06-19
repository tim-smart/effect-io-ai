# toHub

Converts a `Channel` to a `Hub`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const toHub: <Err, Done, Elem>(
  hub: Hub.Hub<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Channel<never, Err, Elem, Done, never, never, unknown>
```
