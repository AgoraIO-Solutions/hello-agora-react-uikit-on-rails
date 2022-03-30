import * as React from 'react'
import * as ReactDOM from 'react-dom'
import AgoraUIKit from 'agora-react-uikit'

const Videocall = () => {
  const appId = document.querySelector('meta[name="appId"]').content || ''
  const channel = document.querySelector('meta[name="channel"]').content || 'test'
  const rtcProps = { appId: appId, channel: channel }
  return <AgoraUIKit rtcProps={rtcProps} />
}

export default Videocall
