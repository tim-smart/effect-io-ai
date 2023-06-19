# fromHub

Construct a `Channel` from a `Hub`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const fromHub: <Err, Done, Elem>(
  hub: Hub.Hub<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Channel<never, unknown, unknown, unknown, Err, Elem, Done>
```
