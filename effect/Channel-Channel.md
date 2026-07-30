Package: `effect`<br />
Module: `Channel`<br />

## Channel.Channel

A `Channel` is a nexus of I/O operations, which supports both reading and
writing. A channel may read values of type `InElem` and write values of type
`OutElem`. When the channel finishes, it yields a value of type `OutDone`. A
channel may fail with a value of type `OutErr`.

Channels are the foundation of Streams: both streams and sinks are built on
channels. Most users shouldn't have to use channels directly, as streams and
sinks are much more convenient and cover all common use cases. However, when
adding new stream and sink operators, or doing something highly specialized,
it may be useful to use channels directly.

Channels compose in a variety of ways:

 - **Piping**: One channel can be piped to another channel, assuming the
   input type of the second is the same as the output type of the first.
 - **Sequencing**: The terminal value of one channel can be used to create
   another channel, and both the first channel and the function that makes
   the second channel can be composed into a channel.
 - **Concatenating**: The output of one channel can be used to create other
   channels, which are all concatenated together. The first channel and the
   function that makes the other channels can be composed into a channel.

**Signature**

```ts
export interface Channel<
  out OutElem,
  in InElem = unknown,
  out OutErr = never,
  in InErr = unknown,
  out OutDone = void,
  in InDone = unknown,
  out Env = never
> extends
  Channel.Variance<
    OutElem,
    InElem,
    OutErr,
    InErr,
    OutDone,
    InDone,
    Env
  >,
  Pipeable
{
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: ChannelUnify<this>
  [Unify.ignoreSymbol]?: ChannelUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L75)

Since v2.0.0