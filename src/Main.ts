import * as Elm from 'elm-types'

export type Main = Elm.Document<Flags, Ports>

export type Flags = null

export type Ports = Elm.Ports<{
    alarm: Elm.OutgoingPort<string>
}>