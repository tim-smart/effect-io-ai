Package: `effect`<br />
Module: `Stream`<br />

## Stream.timeoutOrElse

Switches to a fallback stream if this stream does not emit a value within
the specified duration.

**When to use**

Use when a stream should continue with another stream if an upstream pull
waits longer than the allowed duration.

**Details**

The timeout is checked for each pull. A zero duration uses `orElse`
immediately, while an infinite duration leaves the original stream
unchanged.

**Gotchas**

The fallback stream is not timed after the switch.

**See**

- `timeout` for ending the stream instead of switching to a fallback stream

**Signature**

```ts
declare const timeoutOrElse: { <B, E2, R2>(options: { readonly duration: Duration.Input; readonly orElse: () => Stream<B, E2, R2>; }): <A, E, R>(self: Stream<A, E, R>) => Stream<A | B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Stream<A, E, R>, options: { readonly duration: Duration.Input; readonly orElse: () => Stream<B, E2, R2>; }): Stream<A | B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2849)

Since v4.0.0