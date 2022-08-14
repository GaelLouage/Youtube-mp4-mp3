using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using VideoLibrary;
using Microsoft.Win32;
using Microsoft.WindowsAPICodePack.Dialogs;
using MediaToolkit.Model;
using MediaToolkit;

namespace youtubeVideoDownloader
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private YouTube yt = YouTube.Default;
        private string filepath = string.Empty;
        public MainWindow()
        {
            InitializeComponent();
            rdbmp3.IsChecked = true;
        }
        private  async void  btnDownload_Click(object sender, RoutedEventArgs e)
        {
            if(!string.IsNullOrEmpty(txtUrl.Text))
            {
                if (!string.IsNullOrEmpty(txtUrl.Text))
                {
                    if (txtUrl.Text.StartsWith("https://"))
                    {
                        try
                        {
                            if((bool)rdbmp3.IsChecked)
                            {
                                await DlVideo(txtUrl.Text,".mp3", false);
                            } else if((bool)rdbmp4.IsChecked)
                            {
                                await DlVideo(txtUrl.Text,"", true);
                            }
                       
                        } catch(Exception ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Invalid url! Make sure url starts with 'http://'");
                    }
                }
                else
                {
                    MessageBox.Show("Url is empty.");
                }
            } else
            {
                MessageBox.Show("Choose filepath first");
            }
        }
        private void btnFilePath_Click(object sender, RoutedEventArgs e)
        {
            CommonOpenFileDialog dialog = new CommonOpenFileDialog();
            dialog.InitialDirectory = "C:\\Users";
            dialog.IsFolderPicker = true;
            if (dialog.ShowDialog() == CommonFileDialogResult.Ok)
            {
                txtFilePath.Text = dialog.FileName + @"\";
                filepath = dialog.FileName+ @"\";
            } else
            {
                MessageBox.Show("Invalid path");
            }
        }
        private async Task  DlVideo(string file, string type, bool isVideo)
        {
            string v = string.Empty;
            var video = await yt.GetVideoAsync(file);
            if(isVideo)
            {
                MessageBox.Show("Video downloading in progress.");
            } else
            {
                MessageBox.Show("Music downloading in progress.");
            }
            File.WriteAllBytes(txtFilePath.Text + video.FullName + type,  await video.GetBytesAsync());
        }
    }
}
